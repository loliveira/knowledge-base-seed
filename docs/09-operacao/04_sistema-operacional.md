---
type: procedure
title: Sistema operacional do projeto
description: Como conversas, materiais e decisões viram contexto acumulativo na base.
tags: [operacao, ingestao, fluxo, projeto]
timestamp: 2026-06-23
related:
  - 05_ingestao-de-calls.md
  - ../../projeto/README.md
  - 02_separacao-de-camadas.md
---

# Sistema operacional do projeto

> Ative isto se a sua KB **ingere material vivo** — calls, transcrições, decisões em
> andamento. Ele transforma entrada bruta em conhecimento consolidado, sem perder
> proveniência. A estrutura mora em [`projeto/`](../../projeto/).

## Fluxo principal

```text
entrada → fonte bruta → nota derivada → decisão → backlog
       → atualização canônica → validação → log → handoff
```

## Estados de uma entrada

| Estado | Significado | Próximo movimento |
| --- | --- | --- |
| recebido | material chegou ao projeto | identificar origem e destino |
| preservado | fonte bruta salva sem interpretação | criar nota derivada |
| sintetizado | decisões, dúvidas e ações extraídas | validar com responsáveis |
| decidido | uma orientação foi aprovada | atualizar fonte canônica |
| promovido | mudança entrou na camada canônica | revisar derivados |
| concluído | validações, log e handoff feitos | fechar ou acompanhar |

## Tipos de registro (pastas em `projeto/`)

- `inbox/` — materiais recém-chegados, ainda sem tratamento;
- `transcricoes/` — fala bruta + nota derivada de cada call;
- `decisoes/` — escolhas explícitas com contexto e consequência;
- `backlog/` — fila viva de próximos movimentos;
- `logs/` — o que ocorreu em cada ciclo de trabalho;
- `handoffs/` — estado suficiente para outra pessoa ou agente continuar;
- `templates/` — estruturas reutilizáveis.

## Convenção de nomes

- calls: `AAAA-MM-DD_call-participantes_assunto.md`
- decisões: `AAAA-MM-DD_assunto.md`
- logs: `AAAA-MM-DD.md`
- handoffs: `AAAA-MM-DD_origem-para-destino_assunto.md`

## Fechamento de ciclo

Antes de concluir uma rodada de trabalho:

- verificar links e alterações pendentes;
- atualizar itens do backlog;
- registrar o resultado no log do dia;
- deixar handoff com estado, decisões, pendências e próximo movimento;
- abrir PR com escopo e validação explícitos.

Para o detalhe de ingestão de uma call, veja [ingestão de calls](05_ingestao-de-calls.md).
