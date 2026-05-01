# Como contribuir

Toda mudança deve ser feita por Pull Request.

Se você só precisa do fluxo mínimo de Git, comece por [docs/04-operacao/06_manual-6-comandos.md](./docs/04-operacao/06_manual-6-comandos.md).

## Fluxo

1. criar branch a partir de `main`
2. editar ou criar MD
3. manter frontmatter
4. atualizar links relacionados
5. abrir PR com resumo claro
6. pedir revisão
7. incorporar feedback
8. merge apenas após aprovação

## Frontmatter mínimo

```yaml
---
id: ""
title: ""
type: ""
category: ""
summary: ""
status: "draft"
authority: "reference"
audience:
  -
tags:
  -
owner: ""
last_reviewed: ""
order: 0
related:
  -
---
```

Use [docs/04-operacao/01_schema.md](./docs/04-operacao/01_schema.md) como referência principal.
