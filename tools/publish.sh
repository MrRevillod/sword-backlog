#!/usr/bin/env bash
# Publica el backlog markdown de este repositorio como issues de GitHub.
# Uso: tools/publish.sh
set -uo pipefail

REPO="MrRevillod/sword-backlog"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MAP="$ROOT/tools/map.tsv"

log() { printf '%s\n' "$*"; }

# ---------------- Labels ----------------
log "== Labels =="
create_label() {
  if gh label create "$1" -R "$REPO" --color "$2" --description "$3" --force >/dev/null 2>&1; then
    log "  ok  $1"
  else
    log "  !!  $1"
  fi
}

create_label "tipo: epic"            "5319e7" "Épica"
create_label "tipo: grupo-de-tareas" "1d76db" "Grupo de tareas (no es requerimiento)"
create_label "tipo: requerimiento"   "0e8a16" "Requerimiento"
create_label "tipo: tarea"           "c2e0c6" "Tarea"

for n in 1 2 3 4 5; do
  create_label "objetivo: OE-$n" "fbca04" "Objetivo específico OE-$n"
done

create_label "categoria: framework"      "0052cc" "Framework"
create_label "categoria: metodología"    "5319e7" "Metodología"
create_label "categoria: evaluación"     "d93f0b" "Evaluación"
create_label "categoria: documentación"  "0075ca" "Documentación"

create_label "prioridad: must"   "b60205" "Imprescindible (MoSCoW)"
create_label "prioridad: should" "fbca04" "Importante (MoSCoW)"
create_label "prioridad: could"  "0e8a16" "Opcional (MoSCoW)"

create_label "esfuerzo: S" "c2e0c6" "Hasta medio día"
create_label "esfuerzo: M" "fbca04" "Uno o dos días"
create_label "esfuerzo: L" "d93f0b" "Tres días o más"

create_label "estado: pendiente"   "ededed" "Pendiente"
create_label "estado: en-progreso" "fbca04" "En progreso"
create_label "estado: hecho"       "0e8a16" "Hecho"

create_label "planificación" "bfd4f2" "Ítem de planificación o diseño"

# ---------------- Parsing ----------------
meta() { # file label
  grep -m1 -F "**${2}:**" "$1" | sed -E 's/^- \*\*[^*]*:\*\*[[:space:]]*//' | tr -d '*'
}

declare -A PARENT NUMBER ESTADO CHILDREN CLOSED
ORDER=()

process_item() { # file relpath parent
  local f="$1" rel="$2" parent="${3:-}"
  local title bodyfile url num

  title="$(head -n1 "$f" | sed -E 's/^# //')"
  bodyfile="$(mktemp)"
  tail -n +2 "$f" > "$bodyfile"

  local tipo_raw tipo objetivos_raw categoria_raw prioridad_raw esfuerzo_raw estado_raw label_raw
  tipo_raw="$(meta "$f" "Tipo")"
  tipo="$(printf '%s' "$tipo_raw" | awk '{print $1}')"
  estado_raw="$(meta "$f" "Estado")"
  prioridad_raw="$(meta "$f" "Prioridad")"
  esfuerzo_raw="$(meta "$f" "Esfuerzo")"
  categoria_raw="$(meta "$f" "Categoría")"
  objetivos_raw="$(meta "$f" "Objetivo(s)")"
  [ -z "$objetivos_raw" ] && objetivos_raw="$(meta "$f" "Objetivo")"
  label_raw="$(meta "$f" "Label")"

  local -a labels=("tipo: $tipo")
  local p e
  if [[ "$prioridad_raw" =~ (must|should|could) ]]; then labels+=("prioridad: ${BASH_REMATCH[1]}"); fi
  if [[ "$esfuerzo_raw" =~ ^(S|M|L)$ ]]; then e="$esfuerzo_raw";
  elif [[ "$esfuerzo_raw" =~ \(([SML])\)$ ]]; then e="${BASH_REMATCH[1]}"; fi
  [ -n "${e:-}" ] && labels+=("esfuerzo: $e")
  [ -n "$estado_raw" ] && labels+=("estado: $estado_raw")

  local -a objs
  IFS=',' read -ra objs <<< "$objetivos_raw"
  local o
  for o in "${objs[@]}"; do
    o="$(printf '%s' "$o" | xargs)"
    [ -n "$o" ] && labels+=("objetivo: $o")
  done

  local c
  while IFS= read -r c; do
    c="$(printf '%s' "$c" | xargs)"
    [ -n "$c" ] && labels+=("categoria: $c")
  done < <(printf '%s\n' "$categoria_raw" | tr '/' '\n')

  [ -n "$label_raw" ] && labels+=("$label_raw")

  local -a labelargs=()
  for l in "${labels[@]}"; do labelargs+=(--label "$l"); done

  if ! url="$(gh issue create -R "$REPO" --title "$title" --body-file "$bodyfile" "${labelargs[@]}")"; then
    log "  ERROR creando: $rel"
    rm -f "$bodyfile"
    return 1
  fi
  rm -f "$bodyfile"

  num="$(printf '%s' "$url" | grep -oE '[0-9]+$')"
  NUMBER["$rel"]="$num"
  PARENT["$rel"]="$parent"
  ESTADO["$rel"]="$estado_raw"
  ORDER+=("$rel")
  printf '%s\t%s\t%s\t%s\n' "$rel" "$num" "$parent" "$estado_raw" >> "$MAP"
  log "  #$num  $title"
}

# ---------------- Crear issues ----------------
: > "$MAP"
log "== Issues =="
for epicdir in "$ROOT"/E[0-9]*/; do
  ep="$(basename "$epicdir")"
  process_item "$epicdir/index.md" "$ep/index.md" ""
  for sub in "$epicdir"*/; do
    sm="$(basename "$sub")"
    relsub="$ep/$sm/index.md"
    [ -f "$sub/index.md" ] || continue
    process_item "$sub/index.md" "$relsub" "$ep/index.md"
    for tf in "$sub"*.md; do
      [ -f "$tf" ] || continue
      bn="$(basename "$tf")"
      [ "$bn" = "index.md" ] && continue
      process_item "$tf" "$ep/$sm/$bn" "$relsub"
    done
  done
done

# ---------------- Enlazar sub-issues ----------------
log "== Jerarquía =="
node_id() { gh issue view "$1" -R "$REPO" --json id -q .id; }
for rel in "${ORDER[@]}"; do
  p="${PARENT[$rel]}"
  [ -z "$p" ] && continue
  pid="$(node_id "${NUMBER[$p]}")"
  cid="$(node_id "${NUMBER[$rel]}")"
  if gh api graphql -f query='mutation($p:ID!,$c:ID!){ addSubIssue(input:{issueId:$p, subIssueId:$c}){ subIssue { number } } }' -f p="$pid" -f c="$cid" >/dev/null 2>&1; then
    log "  link #${NUMBER[$rel]} -> #${NUMBER[$p]}"
  else
    log "  ERROR link #${NUMBER[$rel]} -> #${NUMBER[$p]}"
  fi
done

# ---------------- Cierre ----------------
log "== Cierre =="
for rel in "${ORDER[@]}"; do
  p="${PARENT[$rel]}"
  [ -n "$p" ] && CHILDREN["$p"]="${CHILDREN[$p]:-} $rel"
done

for ((i=${#ORDER[@]}-1; i>=0; i--)); do
  rel="${ORDER[$i]}"
  [ "${ESTADO[$rel]}" = "hecho" ] || continue
  all_closed=1
  for child in ${CHILDREN[$rel]:-}; do
    [ "${CLOSED[$child]:-0}" = "1" ] || { all_closed=0; break; }
  done
  if [ "$all_closed" = "1" ]; then
    if gh issue close "${NUMBER[$rel]}" -R "$REPO" >/dev/null 2>&1; then
      CLOSED["$rel"]=1
      log "  cerrado #${NUMBER[$rel]}  $rel"
    else
      log "  ERROR cerrando #${NUMBER[$rel]}  $rel"
    fi
  else
    log "  abierto (hijos sin cerrar) #${NUMBER[$rel]}  $rel"
  fi
done

log "== Fin: ${#ORDER[@]} issues =="
