---
id: "kb.conteudo.mapa"
type: map
category: content
title: Mapa de conteúdo
summary: Onde mora o conhecimento do objeto. Você define as seções desta pasta.
status: active
authority: canonical
audience: [equipe, agentes]
owner: Juliana Valderrama
last_reviewed: 2026-10-24
tags: [mapa, conteudo]
related:
  - ../01-base/00_mapa.md
---
# Mapa de conteúdo

Esta é a pasta onde vive o conhecimento da **Physiolabs**. Diferente de `01-base/` (a
fundação) e `09-operacao/` (a governança da base), aqui mora o que a equipe sabe e assumiu
sobre o próprio trabalho.

## Seções

| Seção | O que entra |
| --- | --- |
| [Fisioterapia](fisioterapia/00_mapa.md) | conhecimento clínico e operacional da prática: abordagens, protocolos, fluxos de atendimento, critérios e referências |

Novas seções entram por PR, cada uma com seu `00_mapa.md`, e são listadas aqui.

## Limite

Nenhum documento desta pasta descreve um paciente real. Caso clínico só entra como
protocolo ou critério geral, sem dado identificável. Ver [política de segurança](../../.github/SECURITY.md).

## Regra de uma seção boa

- tem um `00_mapa.md` que lista o que há nela e em que ordem ler;
- cada arquivo tem frontmatter com `type` (ver [schema](../09-operacao/00_schema.md));
- links relativos entre arquivos relacionados;
- nada de dado bruto sensível nem de prontuário — isso fica fora do Git.