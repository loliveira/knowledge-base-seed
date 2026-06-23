---
type: procedure
title: Manual de Git (6 comandos)
description: Fluxo mínimo de Git para contribuir sem empilhar branches.
tags: [git, contribuicao, fluxo]
timestamp: 2026-06-23
related:
  - ../../CONTRIBUTING.md
  - 03_colaboracao-com-modelos.md
---

# Manual de Git (6 comandos)

O fluxo mínimo para uma contribuição limpa. **Regra de ouro: uma sessão = uma branch = uma
PR, sempre saindo do `main` atualizado.** Isso evita branches empilhadas e conflitos chatos.

```bash
git switch main                              # 1. volte para a main
git pull --ff-only                           # 2. atualize com o remoto
git switch -c claude/nome-curto-da-mudanca   # 3. crie UMA branch (prefixo = autor/agente)
git add <arquivos> && git commit -m "Resumo curto da mudança"   # 4. commite
git push -u origin HEAD                       # 5. publique a branch
gh pr create --fill                           # 6. abra a PR (sem merge — quem revisa decide)
```

## Convenção de prefixo de branch

Quando mais de uma pessoa ou agente contribui, prefixe a branch com o autor para evitar
colisões: `claude/*`, `codex/*`, `<nome>/*`. Veja
[colaboração com modelos](03_colaboracao-com-modelos.md).

## Dica: rituais de sessão

Se você usa Claude Code, as skills `/checkin` e `/checkout` automatizam isto: o checkin
sincroniza o `main` e cria a branch; o checkout escreve o log da sessão, commita e abre a PR
sem merge. Uma sessão, uma branch, uma PR.
