#!/usr/bin/env bash
# Reanuda: crea solo los issues que quedaron fuera, enlaza lo que falte y cierra.
set -o pipefail

REPO="MrRevillod/sword-backlog"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MAP="$ROOT/tools/map.tsv"

log() { printf '%s\n' "$*"; }
meta() { grep -m1 -F "**${2}:**" "$1" | sed -E 's/^- \*\*[^*]*:\*\*[[:space:]]*//' | tr -d '*'; }

declare -A NUMBER PARENT ESTADO CHILDREN CLOSED
while IFS= read -r raw; do
  [ -z "$raw" ] && continue
  rel="${raw%%$'\t'*}"; r1="${raw#*$'\t'}"
  num="${r1%%$'\t'*}"; r2="${r1#*$'\t'}"
  parent="${r2%%$'\t'*}"; estado="${r2#*$'\t'}"
  NUMBER["$rel"]="$num"; PARENT["$rel"]="${parent:-}"; ESTADO["$rel"]="${estado:-}"
done < "$MAP"

item_labels() {
  local f="$1" tipo_raw tipo estado_raw prioridad_raw esfuerzo_raw categoria_raw objetivos_raw label_raw o c
  tipo_raw="$(meta "$f" "Tipo")"; tipo="$(printf '%s' "$tipo_raw" | awk '{print $1}')"
  estado_raw="$(meta "$f" "Estado")"; prioridad_raw="$(meta "$f" "Prioridad")"; esfuerzo_raw="$(meta "$f" "Esfuerzo")"
  categoria_raw="$(meta "$f" "Categoría")"
  objetivos_raw="$(meta "$f" "Objetivo(s)")"; [ -z "$objetivos_raw" ] && objetivos_raw="$(meta "$f" "Objetivo")"
  label_raw="$(meta "$f" "Label")"
  [ -n "$tipo" ] && printf 'tipo: %s\n' "$tipo"
  if [[ "$prioridad_raw" =~ (must|should|could) ]]; then printf 'prioridad: %s\n' "${BASH_REMATCH[1]}"; fi
  if [[ "$esfuerzo_raw" =~ ^(S|M|L)$ ]]; then printf 'esfuerzo: %s\n' "$esfuerzo_raw";
  elif [[ "$esfuerzo_raw" =~ \(([SML])\)$ ]]; then printf 'esfuerzo: %s\n' "${BASH_REMATCH[1]}"; fi
  [ -n "$estado_raw" ] && printf 'estado: %s\n' "$estado_raw"
  local -a objs; IFS=',' read -ra objs <<< "$objetivos_raw"
  for o in "${objs[@]}"; do o="$(printf '%s' "$o" | xargs)"; [ -n "$o" ] && printf 'objetivo: %s\n' "$o"; done
  while IFS= read -r c; do c="$(printf '%s' "$c" | xargs)"; [ -n "$c" ] && printf 'categoria: %s\n' "$c"; done < <(printf '%s\n' "$categoria_raw" | tr '/' '\n')
  [ -n "$label_raw" ] && printf '%s\n' "$label_raw"
}

create_one() { # rel parent
  local rel="$1" parent="${2:-}" f="$ROOT/$1" title bodyfile url num attempt
  if [ -n "${NUMBER[$rel]:-}" ]; then log "  ya existe #${NUMBER[$rel]}  $rel"; return 0; fi
  [ -f "$f" ] || { log "  no existe el archivo: $rel"; return 1; }
  title="$(head -n1 "$f" | sed -E 's/^# //')"
  bodyfile="$(mktemp)"; tail -n +2 "$f" > "$bodyfile"
  local -a labelargs=()
  while IFS= read -r l; do [ -n "$l" ] && labelargs+=(--label "$l"); done < <(item_labels "$f")
  num=""
  for attempt in 1 2 3 4 5 6; do
    if url="$(gh issue create -R "$REPO" --title "$title" --body-file "$bodyfile" "${labelargs[@]}" 2>/dev/null)"; then
      num="$(printf '%s' "$url" | grep -oE '[0-9]+$')"; break
    fi
    log "  reintento $attempt: $rel"; sleep 4
  done
  rm -f "$bodyfile"
  [ -z "$num" ] && { log "  ERROR creando: $rel"; return 1; }
  NUMBER["$rel"]="$num"; PARENT["$rel"]="$parent"; ESTADO["$rel"]="$(meta "$f" "Estado")"
  printf '%s\t%s\t%s\t%s\n' "$rel" "$num" "$parent" "${ESTADO[$rel]}" >> "$MAP"
  log "  #$num  $title"
}

log "== Issues que faltaban =="
create_one "E1-investigacion-y-diseno/diseno/planificacion-del-diseno.md" "E1-investigacion-y-diseno/diseno/index.md"
create_one "E2-base-del-framework/rb-06-ensamblaje-y-arranque/index.md" "E2-base-del-framework/index.md"
create_one "E3-desarrollo-del-framework/rf-02-contenedor-de-inyeccion-de-dependencias/index.md" "E3-desarrollo-del-framework/index.md"

log "== Jerarquía (enlaces faltantes) =="
node_id() { gh issue view "$1" -R "$REPO" --json id -q .id 2>/dev/null; }
for rel in "${!NUMBER[@]}"; do
  p="${PARENT[$rel]:-}"; [ -z "$p" ] && continue
  pn="${NUMBER[$p]:-}"; cn="${NUMBER[$rel]:-}"
  [ -z "$pn" ] && { log "  sin padre: $rel"; continue; }
  pid="$(node_id "$pn")"; cid="$(node_id "$cn")"
  if gh api graphql -f query='mutation($p:ID!,$c:ID!){ addSubIssue(input:{issueId:$p, subIssueId:$c}){ subIssue { number } } }' -f p="$pid" -f c="$cid" >/dev/null 2>&1; then
    log "  link #$cn -> #$pn"
  else
    log "  ERROR o ya existente #$cn -> #$pn"
  fi
done

log "== Cierre =="
for rel in "${!NUMBER[@]}"; do p="${PARENT[$rel]:-}"; [ -n "$p" ] && CHILDREN["$p"]="${CHILDREN[$p]:-} $rel"; done
changed=1
while [ "$changed" = "1" ]; do
  changed=0
  for rel in "${!NUMBER[@]}"; do
    [ "${ESTADO[$rel]:-}" = "hecho" ] || continue
    [ "${CLOSED[$rel]:-0}" = "1" ] && continue
    all=1
    for c in ${CHILDREN[$rel]:-}; do [ "${CLOSED[$c]:-0}" = "1" ] || { all=0; break; }; done
    if [ "$all" = "1" ]; then
      if gh issue close "${NUMBER[$rel]}" -R "$REPO" >/dev/null 2>&1; then
        CLOSED[$rel]=1; changed=1; log "  cerrado #${NUMBER[$rel]}  $rel"
      fi
    fi
  done
done

log "== Fin =="
