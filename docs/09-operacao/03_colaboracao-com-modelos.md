---
type: procedure
title: Colaboração com modelos
description: Como múltiplos agentes de IA contribuem para a base com autoria rastreável.
tags: [agentes, ia, colaboracao, autoria]
timestamp: 2026-06-23
related:
  - ../../AGENTS.md
  - 01_manual-git.md
---

# Colaboração com modelos

> Pule se nenhum agente de IA escreve na sua base. Importa quando **um ou mais modelos**
> (Claude, Codex, etc.) contribuem — e você quer saber quem produziu o quê.

## Protocolo de identificação de modelo

Toda contribuição feita por um agente declara o modelo em três camadas:

1. **Trailer no commit:**
   ```
   Co-Authored-By: Claude Opus 4.8 <noreply@anthropic.com>
   ```
2. **Seção "Modelo / Agente" no corpo da PR** (ver
   [PULL_REQUEST_TEMPLATE](../../.github/PULL_REQUEST_TEMPLATE.md)).
3. **Prefixo de branch** opcional: `claude/*`, `codex/*`, `<agente>/*`.

## Por que

- dá rastro de autoria quando vários agentes editam a mesma base;
- evita colisão de branch entre agentes que trabalham em paralelo;
- ajuda na revisão: você sabe que lente produziu cada mudança.

## Registro vivo

Mantenha abaixo a lista de agentes que interagem com esta KB e como.

| Agente | Modelo / versão | Prefixo de branch | Papel |
| --- | --- | --- | --- |
| <ex.: Claude> | <claude-opus-4-8> | `claude/*` | <edição, ingestão, revisão> |
| <ex.: Codex> | <gpt-5> | `codex/*` | <...> |

## Regras de trabalho dos agentes

As regras detalhadas (ordem de leitura, hierarquia de confiança, saída mínima de uma
ingestão) vivem no [AGENTS.md](../../AGENTS.md) na raiz do repo.
