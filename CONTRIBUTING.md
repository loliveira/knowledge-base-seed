# Como contribuir

Toda mudança é feita por **Pull Request**. Nada de commit direto no `main`.

**Regra de ouro:** uma sessão = uma branch = uma PR, sempre saindo do `main` atualizado. Isso
evita branches empilhadas e conflitos. Se precisa só do fluxo de Git, veja o
[manual de Git](./docs/09-operacao/01_manual-git.md).

## Fluxo

1. `git switch main && git pull --ff-only`
2. criar **uma** branch (prefixo de autor/agente: `claude/*` ou `<nome>/*`)
3. editar ou criar Markdown
4. manter o frontmatter (ver schema abaixo)
5. atualizar os links `related` afetados
6. executar `python3 scripts/audit-kb.py`
7. abrir PR com resumo claro — **sem merge próprio**
8. pedir revisão e incorporar feedback
9. merge apenas após aprovação de quem mantém

## Frontmatter

Esta base adota o **schema rico**. Campos mínimos em todo documento de `docs/`, `views/` e
`STATE.md`:

```yaml
---
id: "kb.area.nome"
type: ""
title: ""
summary: ""
status: draft          # draft | active | reference | deprecated
authority: reference   # canonical | reference | derived
audience: [equipe, agentes]
owner: ""
last_reviewed: ""      # AAAA-MM-DD
tags: []
related: []
---
```

A convenção completa, com os campos operacionais de proveniência e privacidade, está em
[docs/09-operacao/00_schema.md](./docs/09-operacao/00_schema.md).

## Agentes de IA

Se você é um agente, declare o modelo no commit (`Co-Authored-By:`) e no corpo da PR. Veja
[colaboração com modelos](./docs/09-operacao/03_colaboracao-com-modelos.md) e
[AGENTS.md](./AGENTS.md).
