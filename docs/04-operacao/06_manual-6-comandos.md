---
id: "kb.operacao.manual-6-comandos"
title: "Manual de 6 comandos"
type: "guide"
category: "operations"
summary: "Fluxo mínimo de Git para colaborar sem empilhar branches."
order: 6
status: "active"
authority: "canonical"
audience:
  - equipe
  - agentes
tags:
  - git
owner: "Equipe"
last_reviewed: "2026-04-30"
related:
  - "kb.operacao.como-contribuir"
---

# Manual de 6 comandos

```bash
git switch main
git pull --ff-only
git switch -c codex/nome-curto-da-mudanca
git status
git add <arquivos> && git commit -m "Resumo curto da mudanca"
git push -u origin HEAD
```
