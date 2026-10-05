#!/usr/bin/env bash
# Publica (de forma idempotente) el backlog markdown de este repositorio como
# issues de GitHub. Se puede re-ejecutar: omite lo ya creado y enlaza/cierra lo
# que falte.
set -o pipefail

REPO="MrRevillod/sword-backlog"
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
MAP="$ROOT/tools/map.tsv"

log() { printf '%s\n' "$*"; }

meta() { grep -m1 -F "**${2}:**" "$1" | sed -E 's/^- \*\*[^*]*:\*\*[[:space:]]*//' | tr -d '*'; }

declare -A NUMBER PARENT ESTADO CHILDREN CLOSED

orderload() { :; }

touch "$MAP"
while IFS= read -r raw; do
  [ -z "$raw" ] && continue
  rel="${raw%%$'\t'*}"; r1="${raw#*$'\t'}"
  num="${r1%%$'\t'*}"; r2="${r1#*$'\t'}"
  parent="${r2%%$'\t'*}"; estado="${r2#*$'\t'}"
  NUMBER["$rel"]="$num"; PARENT["$rel"]="${parent:-}"; ESTADO["$rel"]="${estado:-}"
done < "$MAP"

item_labels() { # file
  local f="$1"
  local tipo_raw tipo estado_raw prioridad_raw esfuerzo_raw categoria_raw objetivos_raw label_raw
  tipo_raw="$(meta "$f" "Tipo")"; tipo="$(printf '%s' "$tipo_raw" | awk '{print $1}')"
  estado_raw="$(meta "$f" "Estado")"
  prioridad_raw="$(meta "$f" "Prioridad")"
  esfuerzo_raw="$(meta "$f" "Esfuerzo")"
  categoria_raw="$(meta "$f" "Categoría")"
  objetivos_raw="$(meta "$f" "Objetivo(s)")"; [ -z "$objetivos_raw" ] && objetivos_raw="$(meta "$f" "Objetivo")"
  label_raw="$(meta "$f" "Label")"

  [ -n "$tipo" ] && printf 'tipo: %s\n' "$tipo"
  if [[ "$prioridad_raw" =~ (must|should|could) ]]; then printf 'prioridad: %s\n' "${BASH_REMATCH[1]}"; fi
  if [[ "$esfuerzo_raw" =~ ^(S|M|L)$ ]]; then printf 'esfuerzo: %s\n' "$esfuerzo_raw";
  elif [[ "$esfuerzo_raw" =~ \(([SML])\)$ ]]; then printf 'esfuerzo: %s\n' "${BASH_REMATCH[1]}"; fi
  [ -n "$estado_raw" ] && printf 'estado: %s\n' "$estado_raw"

  local -a objs; IFS=',' read -ra objs <<< "$objetivos_raw"; local o
  for o in "${objs[@]}"; do o="$(printf '%s' "$o" | xargs)"; [ -n "$o" ] && printf 'objetivo: %s\n' "$o"; done
  local c
  while IFS= read -r c; do c="$(printf '%s' "$c" | xargs)"; [ -n "$c" ] && printf 'categoria: %s\n' "$c"; done < <(printf '%s\n' "$categoria_raw" | tr '/' '\n')
  [ -n "$label_raw" ] && printf '%s\n' "$label_raw"
}

create_issue() { # file rel parent
  local f="$1" rel="$2" parent="${3:-}" title bodyfile url num attempt
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
  if [ -z "$num" ]; then log "  ERROR creando: $rel"; return 1; fi
  NUMBER["$rel"]="$num"; PARENT["$rel"]="$parent"; ESTADO["$rel"]="$(meta "$f" "Estado")"
  printf '%s\t%s\t%s\t%s\n' "$rel" "$num" "$parent" "${ESTADO[$rel]}" >> "$MAP"
  log "  #$num  $title"
}

ensure() { local rel="$2"; [ -n "${NUMBER[$rel]:-}" ] && return 0; create_issue "$@"; }
collect() { ORDER+=("$2"); }

walk() { # callback
  local cb="$1" epicdir sub sm relsub tf bn ep
  for epicdir in "$ROOT"/E[0-9]*/; do
    ep="$(basename "$epicdir")"
    "$cb" "$epicdir/index.md" "$ep/index.md" ""
    for sub in "$epicdir"*/; do
      sm="$(basename "$sub")"
      [ -f "$sub/index.md" ] || continue
      relsub="$ep/$sm/index.md"
      "$cb" "$sub/index.md" "$relsub" "$ep/index.md"
      for tf in "$sub"*.md; do
        [ -f "$tf" ] || continue
        bn="$(basename "$tf")"; [ "$bn" = "index.md" ] && continue
        "$cb" "$tf" "$ep/$sm/$bn" "$relsub"
      done
    done
  done
}

log "== Asegurando issues (faltan por crear) =="
walk ensure

ORDER=()
walk collect

log "== Jerarquía =="
node_id() { gh issue view "$1" -R "$REPO" --json id -q .id 2>/dev/null; }
for rel in "${ORDER[@]}"; do
  p="${PARENT[$rel]:-}"; [ -z "$p" ] && continue
  pn="${NUMBER[$p]:-}"; cn="${NUMBER[$rel]:-}"
  [ -z "$pn" ] && { log "  sin padre: $rel"; continue; }
  pid="$(node_id "$pn")"; cid="$(node_id "$cn")"
  [ -z "$pid" ] || [ -z "$cid" ] && { log "  ERROR ids #$cn -> #$pn"; continue; }
  if gh api graphql -f query='mutation($p:ID!,$c:ID!){ addSubIssue(input:{issueId:$p, subIssueId:$c}){ subIssue { number } } }' -f p="$pid" -f c="$cid" >/dev/null 2>&1; then
    log "  link #$cn -> #$pn"
  else
    log "  link existente #$cn -> #$pn"
  fi
done

log "== Cierre =="
for rel in "${ORDER[@]}"; do p="${PARENT[$rel]:-}"; [ -n "$p" ] && CHILDREN["$p"]="${CHILDREN[$p]:-} $rel"; done
for ((i=${#ORDER[@]}-1; i>=0; i--)); do
  rel="${ORDER[$i]}"
  [ "${ESTADO[$rel]:-}" = "hecho" ] || continue
  all=1
  for c in ${CHILDREN[$rel]:-}; do [ "${CLOSED[$c]:-0}" = "1" ] || { all=0; break; }; done
  if [ "$all" = "1" ]; then
    gh issue close "${NUMBER[$rel]}" -R "$REPO" >/dev/null 2>&1 && { CLOSED[$rel]=1; log "  cerrado #${NUMBER[$rel]}  $rel"; }
  else
    log "  abierto (hijos abiertos) #${NUMBER[$rel]}  $rel"
  fi
done

log "== Fin =="
