#!/usr/bin/env bash
# Cria o par de arquivos para ingestão de uma call em projeto/transcricoes/:
#   - <slug>_transcricao-bruta.md   (cole a transcrição aqui)
#   - <slug>_notas-e-decisoes.md    (nota derivada, a partir do template)
#
# Uso:
#   scripts/nova-ingestao.sh 2026-06-23 "call-leandro" "alinhamento-pdca"
#   scripts/nova-ingestao.sh                # modo interativo
set -euo pipefail

DATA="${1:-}"; PARTICIPANTES="${2:-}"; ASSUNTO="${3:-}"

if [[ -z "$DATA" ]]; then read -rp "Data (AAAA-MM-DD): " DATA; fi
if [[ -z "$PARTICIPANTES" ]]; then read -rp "Participantes (slug, ex.: call-leandro): " PARTICIPANTES; fi
if [[ -z "$ASSUNTO" ]]; then read -rp "Assunto (slug, ex.: alinhamento-pdca): " ASSUNTO; fi

if [[ ! "$DATA" =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
  echo "Data invalida. Use AAAA-MM-DD." >&2
  exit 1
fi

for valor in "$PARTICIPANTES" "$ASSUNTO"; do
  if [[ ! "$valor" =~ ^[a-z0-9]+([_-][a-z0-9]+)*$ ]]; then
    echo "Slug invalido: use apenas letras minusculas, numeros, hifen e underscore." >&2
    exit 1
  fi
done

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DEST="$ROOT/projeto/transcricoes"
mkdir -p "$DEST"

SLUG="${DATA}_${PARTICIPANTES}_${ASSUNTO}"
BRUTA="$DEST/${SLUG}_transcricao-bruta.md"
NOTAS="$DEST/${SLUG}_notas-e-decisoes.md"

if [[ -e "$BRUTA" || -e "$NOTAS" ]]; then
  echo "Já existe arquivo com esse slug. Abortando para não sobrescrever." >&2
  exit 1
fi

cat > "$BRUTA" <<EOF
---
type: reference
title: "Transcrição bruta: ${PARTICIPANTES} (${DATA})"
description: Fala bruta da call. Fonte, não fato.
tags: [call, transcricao-bruta]
timestamp: ${DATA}
---

# Transcrição bruta — ${PARTICIPANTES} (${DATA})

> Cole a transcrição aqui. Transcrições longas/sensíveis ficam fora do Git — referencie por link.
EOF

TEMPLATE="$ROOT/projeto/templates/nota-derivada-de-call.md"
if [[ -f "$TEMPLATE" ]]; then
  sed -e "s/AAAA-MM-DD/${DATA}/g" \
      -e "s/<call>/${PARTICIPANTES}/g" \
      "$TEMPLATE" > "$NOTAS"
else
  echo "# Notas e decisões — ${PARTICIPANTES} (${DATA})" > "$NOTAS"
fi

echo "Criados:"
echo "  $BRUTA"
echo "  $NOTAS"
