---
type: procedure
title: Ingestão de calls
description: Como uma reunião ou transcrição entra na base sem virar bagunça.
tags: [calls, ingestao, transcricao]
timestamp: 2026-06-23
related:
  - 04_sistema-operacional.md
  - ../../scripts/nova-ingestao.sh
  - ../../projeto/templates/nota-derivada-de-call.md
---

# Ingestão de calls

Convenção para transformar uma reunião em conhecimento útil, preservando a fonte e
distribuindo os insights.

## Passos

1. **Crie o par de arquivos** com [`scripts/nova-ingestao.sh`](../../scripts/nova-ingestao.sh):
   um `*_transcricao-bruta.md` e um `*_notas-e-decisoes.md` em `projeto/transcricoes/`.
2. **Cole a transcrição** no arquivo bruto.
3. **Faça higiene da transcrição.** Corrija termos que a transcrição automática errou (ex.:
   "Rio Chart" → "Hill Chart"). Descreva correções relevantes na nota derivada.
4. **Preencha a nota derivada**, classificando cada item como **fato**, **decisão**,
   **inferência**, **dúvida** ou **ação** — citando trechos ou timestamps quando a precisão
   importar.
5. **Distribua os insights** para as páginas certas (projeto, pessoa, conceito). **Não
   duplique** — o lugar canônico recebe o conteúdo; a nota da call só aponta.
6. **Registre decisões** relevantes em `projeto/decisoes/`.
7. **Atualize o backlog** com responsável, prioridade e dependência.
8. **Promova apenas decisões validadas** para a camada canônica (ver
   [separação de camadas](02_separacao-de-camadas.md)).
9. **Registre no log** o que mudou; crie **handoff** se o trabalho continua.

## Onde fica o quê

- **intake** (contexto, síntese, ponteiros) → `projeto/transcricoes/`
- **insights** → distribuídos para as páginas de projeto/pessoa/conceito
- **transcrição bruta longa ou sensível** → fora do Git (ex.: Drive), referenciada por link

## Princípio

A transcrição bruta é fonte, não fato. O conhecimento mora na **nota derivada** e nas páginas
canônicas que ela alimenta.
