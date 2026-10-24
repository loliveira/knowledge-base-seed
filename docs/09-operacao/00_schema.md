---
id: "kb.operacao.schema"
type: schema
category: operations
title: Schema da Knowledge Base
summary: Convenção de frontmatter — OKF leve como padrão, schema rico como modo avançado.
status: active
authority: canonical
audience: [equipe, agentes]
owner: Juliana Valderrama
last_reviewed: 2026-10-24
resource: https://github.com/GoogleCloudPlatform/knowledge-catalog/tree/main/okf
tags: [schema, frontmatter, okf, governanca]
related:
  - ../01-base/00_mapa.md
  - ../../type/README.md
  - 06_interoperabilidade-entre-bases.md
---
# Schema da Knowledge Base

Todo documento estrutural começa com um bloco de **frontmatter** YAML. Ele torna a base
buscável, filtrável e consumível por agentes sem perder a simplicidade do Markdown.

Há dois níveis. **Esta base adota o nível rico** (decisão fundadora, ver
[mapa](../01-base/00_mapa.md)): KB institucional, lida pela equipe e por agentes, onde importa
saber a autoridade, o público e o ciclo de vida de cada documento. O nível leve fica descrito
como referência do formato de origem.

## Nível 1 — OKF leve (referência)

Inspirado no [Open Knowledge Format](https://github.com/GoogleCloudPlatform/knowledge-catalog/tree/main/okf).
**Único campo obrigatório: `type`.** Os demais são recomendados.

```yaml
---
type: map                 # obrigatório — o papel da nota (ver type/)
title: Nome legível       # recomendado
description: Uma linha sobre o documento.
tags: [contexto, exemplo] # lista curta
timestamp: 2026-06-23     # AAAA-MM-DD
related:                  # links relativos para notas relacionadas
  - ../01-base/00_mapa.md
---
```

Regras:

- YAML simples, valores legíveis.
- datas em `AAAA-MM-DD`.
- `resource:` para apontar URL, repo ou sistema externo relacionado.
- **nunca** coloque segredos, tokens, chaves, saldos ou dados privados no frontmatter.

## Nível 2 — Schema rico (nível adotado nesta base)

Todo documento em `docs/`, `views/` e `STATE.md` usa este bloco. Campos mínimos
obrigatórios: `id`, `type`, `title`, `status`, `authority`, `audience`, `owner`,
`last_reviewed`.

```yaml
---
id: "kb.area.nome"        # identificador estável e único
type: map
category: core            # core | content | operations | ...
title: ""
summary: ""
status: draft             # draft | active | reference | deprecated
authority: reference      # canonical | reference | derived
audience:                 # quem é o leitor
  - equipe
  - agentes
owner: ""                 # responsável pelo documento
last_reviewed: ""         # AAAA-MM-DD da última revisão
order: 0                  # ordem dentro da seção
tags: []
related: []
---
```

Quando o documento nasce de uma fonte, circula entre bases ou contém material sensível,
adicione somente os campos operacionais necessários:

```yaml
---
id: "event-AAAA-MM-DD-exemplo"
type: event
status: reviewed           # raw | reviewed | canonical | publishable | archived
privacy: private           # private-local | private | restricted | public
availability: repo-private # local | repo-private | partner-shared | public
source_refs: []            # fontes consultadas diretamente
derived_from: []           # origens causais deste artefato
owner: ""                  # quem responde editorialmente pelo registro
---
```

### Distinções que não devem ser comprimidas

- `authority` diz quanto o documento é confiável como referência.
- `status` diz em que etapa editorial ele está.
- `privacy` diz quem pode acessar o conteúdo.
- `availability` diz onde o conteúdo pode ser encontrado ou entregue.
- `source_refs` registra fontes usadas diretamente.
- `derived_from` registra causalidade; `related` registra apenas associação contextual.

OCR, resumo e transcrição automática são **derivados técnicos**, não a fonte original nem
conteúdo canônico. Um documento só ganha `status: canonical` depois de revisão e promoção
explícitas.

## Como escolher

| Use **leve** se… | Use **rico** se… |
| --- | --- |
| projeto pessoal, curso, home-lab | KB institucional de uma organização |
| 1 a 2 mantenedores | vários agentes escrevendo em paralelo |
| quer começar rápido | precisa rastrear autoridade e revisão |

Você pode **migrar gradualmente** de leve para rico: documentos novos primeiro, depois os de
governança, depois o resto. Não converta tudo de uma vez.

Uma migração gradual também vale para proveniência: aplique primeiro em calls, materiais
brutos, decisões e documentos que atravessam bases.

## Tipos (`type`)

A lista de tipos vive em [`type/`](../../type/README.md) e funciona como **lente de
navegação**, não como schema rígido. Mantenha o conjunto pequeno.