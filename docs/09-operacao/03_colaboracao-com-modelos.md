---
id: "kb.operacao.colaboracao-com-modelos"
type: procedure
category: operations
title: Colaboração com modelos
summary: Como múltiplos agentes de IA contribuem para a base com autoria rastreável.
status: active
authority: canonical
audience: [equipe, agentes]
owner: Juliana Valderrama
last_reviewed: 2026-10-24
tags: [agentes, ia, colaboracao, autoria]
related:
  - ../../AGENTS.md
  - 01_manual-git.md
---
# Colaboração com modelos

> Nesta base, o único agente que escreve é o Claude (Claude Code). O protocolo abaixo vale
> para ele e para qualquer modelo que venha a ser adicionado ao registro.

## Protocolo de identificação de modelo

Toda contribuição feita por um agente declara o modelo em três camadas:

1. **Trailer no commit:**
   ```
   Co-Authored-By: Claude Fable 5.1 <noreply@anthropic.com>
   ```
2. **Seção "Modelo / Agente" no corpo da PR** (ver
   [PULL_REQUEST_TEMPLATE](../../.github/PULL_REQUEST_TEMPLATE.md)).
3. **Prefixo de branch:** `claude/*` (ou `<agente>/*` para um modelo novo no registro).

## Por que

- dá rastro de autoria quando vários agentes editam a mesma base;
- evita colisão de branch entre agentes que trabalham em paralelo;
- ajuda na revisão: você sabe que lente produziu cada mudança.

## Registro vivo

Mantenha abaixo a lista de agentes que interagem com esta KB e como.

| Agente | Modelo / versão | Prefixo de branch | Papel |
| --- | --- | --- | --- |
| Claude (Claude Code) | Claude Fable 5.1 — `claude-fable-5-1` | `claude/*` | edição, ingestão, revisão, manutenção da base |

## Regras de trabalho dos agentes

As regras detalhadas (ordem de leitura, hierarquia de confiança, saída mínima de uma
ingestão) vivem no [AGENTS.md](../../AGENTS.md) na raiz do repo.

Cada sessão usa um ritual leve de **check-in e checkout**. O agente começa pelo estado e
fontes canônicas; termina atualizando destinos, estado, log/handoff e deixando uma PR
revisável. O objetivo é permitir continuidade sem depender da memória do chat anterior.