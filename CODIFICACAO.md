# Codificação

O Home Lab usa UTF-8 como codificação padrão para arquivos de texto.

## Regra prática

- Escrever português com acentos normalmente: `visão`, `operação`, `automação`,
  `São Paulo`, `Ângela`.
- Não remover acentos para "proteger" o arquivo.
- Não substituir caracteres acentuados por entidades HTML em Markdown.
- Salvar arquivos Markdown, scripts, CSVs e HTML em UTF-8.
- Manter fim de linha em LF, inclusive em scripts PowerShell versionados aqui.

## Agentes e ferramentas

Ao criar ou editar arquivos neste repositório:

- Ler e escrever texto como UTF-8.
- Em Python, usar `encoding="utf-8"` ao abrir arquivos.
- Em PowerShell, usar `-Encoding utf8` ao gravar arquivos.
- Em HTML, declarar `<meta charset="utf-8">`.
- Em JSON produzido por scripts, preferir `ensure_ascii=False` quando o arquivo
  for lido por humanos.

## Mojibake

Sequências como `Ã§`, `Ã£`, `Â´`, `â€™` ou `�` indicam provável mojibake.
Quando aparecerem, corrigir o texto para UTF-8 legível em vez de normalizar para
ASCII.
