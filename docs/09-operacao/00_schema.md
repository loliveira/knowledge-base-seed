---
type: schema
title: Schema da Knowledge Base
description: Convenção de frontmatter — OKF leve como padrão, schema rico como modo avançado.
tags: [schema, frontmatter, okf, governanca]
resource: https://github.com/GoogleCloudPlatform/knowledge-catalog/tree/main/okf
timestamp: 2026-06-23
related:
  - ../01-base/00_mapa.md
  - ../../type/README.md
---

# Schema da Knowledge Base

Todo documento estrutural começa com um bloco de **frontmatter** YAML. Ele torna a base
buscável, filtrável e consumível por agentes sem perder a simplicidade do Markdown.

Há dois níveis. **Comece pelo leve.** Enriqueça só quando a dor aparecer.

## Nível 1 — OKF leve (padrão recomendado)

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

## Nível 2 — Schema rico (modo avançado, opcional)

Para KB institucional consumida por vários agentes, onde importa rastrear autoridade,
público-alvo e ciclo de vida de cada documento. Adicione ao bloco leve:

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

## Como escolher

| Use **leve** se… | Use **rico** se… |
| --- | --- |
| projeto pessoal, curso, home-lab | KB institucional de uma organização |
| 1 a 2 mantenedores | vários agentes escrevendo em paralelo |
| quer começar rápido | precisa rastrear autoridade e revisão |

Você pode **migrar gradualmente** de leve para rico: documentos novos primeiro, depois os de
governança, depois o resto. Não converta tudo de uma vez.

## Tipos (`type`)

A lista de tipos vive em [`type/`](../../type/README.md) e funciona como **lente de
navegação**, não como schema rígido. Mantenha o conjunto pequeno.
