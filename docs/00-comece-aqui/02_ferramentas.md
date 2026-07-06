---
type: guide
title: Ferramentas
description: O que instalar para operar uma KB versionada em Markdown, e por quê.
tags: [onboarding, ferramentas, setup]
timestamp: 2026-06-23
related:
  - 01_perguntas-fundamentais.md
  - 03_como-instanciar.md
---

# Ferramentas

Uma KB versionada em Markdown pede pouco. Esta é a lista do essencial ao opcional.

| Ferramenta | Para quê | Obrigatória? |
| --- | --- | --- |
| **Git** | versionar, ramificar, manter histórico | Sim |
| **Conta no GitHub** (ou GitLab) | hospedar, revisar por Pull Request, autoria | Sim |
| **Editor de texto/Markdown** | escrever (VS Code, Obsidian, qualquer um) | Sim |
| **YAML frontmatter** | metadados legíveis por humano e agente (é só convenção, nada a instalar) | Sim |
| **Editor com agente de IA** (Claude Code, Cursor) | escrever, navegar, ingerir e manter a base com ajuda | Recomendada |
| **`gh` CLI** | abrir PRs e gerenciar o repo pelo terminal | Recomendada |
| **MCP** (Model Context Protocol) | expor a KB para agentes consumirem como contexto | Opcional |
| **Gestor de tarefas** (Basecamp, Linear, etc.) | onde mora a **ação de equipe** — que NÃO é memória versionada | Conforme o objeto |
| **Skills `/checkin` e `/checkout`** | ritual de sessão: sincroniza `main`, cria 1 branch, abre 1 PR ao fechar | Opcional, recomendada |

## Princípios por trás da escolha

- **Markdown + Git, não plataforma.** O conhecimento precisa sobreviver à ferramenta. Texto
  simples em Git é portátil, diffável e legível por qualquer agente, hoje e em 10 anos.
- **Frontmatter pequeno.** Metadado em YAML no topo do arquivo (ver
  [schema](../09-operacao/00_schema.md)). O suficiente para busca, filtro e indexação — sem
  burocracia.
- **Separe memória de ação.** O que precisa de responsável e prazo vive no gestor de tarefas.
  O que é conhecimento durável vive aqui. Não confunda os dois.

## Setup mínimo (copiar e colar)

```bash
# 1. instale o git e o gh (macOS, via Homebrew)
brew install git gh
gh auth login

# 2. clone esta semente como base da sua KB (veja o próximo guia)
gh repo create minha-kb --private --template wagnerlsmartins/knowledge-base-seed
```

Siga para **[como instanciar](03_como-instanciar.md)**.
