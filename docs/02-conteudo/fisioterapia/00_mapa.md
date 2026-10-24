---
id: "kb.conteudo.fisioterapia.mapa"
type: map
category: content
title: Fisioterapia
summary: Porta de entrada do conhecimento clínico e operacional da prática de fisioterapia na Physiolabs.
status: active
authority: canonical
audience: [equipe, agentes]
owner: Juliana Valderrama
last_reviewed: 2026-10-24
tags: [mapa, fisioterapia, conteudo]
related:
  - ../00_mapa.md
  - ../../01-base/02_lexico.md
---
# Fisioterapia

> Primeira seção de conteúdo da KB Physiolabs. Reúne o que a equipe sabe e assumiu sobre a
> prática de fisioterapia: como atende, com que critérios, seguindo quais protocolos e
> referências.

## O que entra aqui

- **Abordagens e protocolos** — como a Physiolabs conduz avaliação, tratamento e alta, por
  condição ou por técnica.
- **Fluxos de atendimento** — o percurso do paciente, do primeiro contato à alta, e os
  papéis da equipe em cada etapa.
- **Critérios e decisões clínicas assumidas** — o que a equipe decidiu adotar como padrão,
  com origem e responsável.
- **Referências** — literatura, diretrizes e materiais que sustentam os protocolos.

## O que não entra

- Dado de paciente, prontuário, evolução ou caso identificável, em nenhuma forma.
- Opinião individual ainda não validada pela equipe: isso amadurece em `projeto/` e só sobe
  por PR aprovada.

## Arquivos

| Arquivo | Tipo | O que é |
| --- | --- | --- |
| (nenhum ainda) | | A primeira nota entra por PR e é listada aqui. |

## Como adicionar uma nota

1. Crie o arquivo nesta pasta com o frontmatter rico (ver [schema](../../09-operacao/00_schema.md)).
2. Liste-o na tabela acima, com tipo e uma linha de descrição.
3. Atualize `related` nas notas que ele afeta.
4. Rode `python3 scripts/audit-kb.py` e abra a PR.