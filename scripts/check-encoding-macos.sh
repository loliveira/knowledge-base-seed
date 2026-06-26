#!/usr/bin/env bash
set -euo pipefail

cd "$(git rev-parse --show-toplevel)"

status=0

while IFS= read -r path; do
  if ! iconv -f UTF-8 -t UTF-8 "$path" >/dev/null 2>&1; then
    printf 'Arquivo nao esta em UTF-8: %s\n' "$path"
    status=1
  fi
done < <(
  git ls-files \
    '*.md' '*.txt' '*.csv' '*.json' '*.yml' '*.yaml' \
    '*.html' '*.css' '*.js' '*.ts' '*.py' '*.sh' '*.ps1'
)

if rg -n 'Ã|Â´|â€™|â€œ|â€|�' \
  --glob '*.{md,txt,csv,json,yml,yaml,html,css,js,ts,py,sh,ps1}' \
  --glob '!**/codificacao.md' \
  --glob '!**/CODIFICACAO.md' \
  --glob '!**/check-encoding-macos.sh' \
  .; then
  printf 'Possivel mojibake encontrado nos arquivos acima.\n'
  status=1
fi

exit "$status"
