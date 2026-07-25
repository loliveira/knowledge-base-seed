---
type: map
title: Mapa da Knowledge Base
description: Porta de entrada da base — estrutura, ordem de leitura e as decisões fundadoras.
tags: [mapa, navegacao]
timestamp: 2026-06-23
related:
  - 01_tese.md
  - 02_lexico.md
  - ../09-operacao/00_schema.md
  - ../../STATE.md
---

# Mapa da <NOME DA KB>

> Comece por aqui. Este é o documento canônico de navegação da base.

## As decisões fundadoras

> Cole aqui suas respostas às [oito perguntas fundamentais](../00-comece-aqui/01_perguntas-fundamentais.md).

- **Objeto:** <o que esta KB representa>
- **Públicos:** <quem lê>
- **Camadas:** <uma camada | operacional → coletiva | ...>
- **Privacidade:** <privado | semi-público | público> — nunca entra: <segredos, preços, ...>
- **Manutenção:** <PR-only; quem dá merge; ritual de sessão>
- **Agentes:** <Claude, Codex, nenhum>
- **Frontmatter:** <leve (OKF) | rico>
- **Ingestão de calls:** <sim, usa projeto/ | não>

## Estrutura

- `01-base/` — fundação: tese, léxico, entidades
- `02-conteudo/` — o conhecimento do objeto (seções que você define)
- `09-operacao/` — governança da própria base: schema, camadas, ingestão
- `views/` — trilhas de leitura por público
- `type/` — tipos de nota como lente
- `projeto/` — operação viva: inbox, decisões, logs, handoffs (opcional)

## Ordem de leitura sugerida

1. Este mapa
2. [Estado atual](../../STATE.md)
3. [Tese](01_tese.md)
4. [Léxico](02_lexico.md)
5. [Entidades](03_entidades.md)
