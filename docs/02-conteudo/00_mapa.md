---
type: map
title: Mapa de conteúdo
description: Onde mora o conhecimento do objeto. Você define as seções desta pasta.
tags: [mapa, conteudo]
timestamp: 2026-06-23
related:
  - ../01-base/00_mapa.md
---

# Mapa de conteúdo

Esta é a pasta onde vive o conhecimento do **seu objeto**. Diferente de `01-base/` (a
fundação) e `09-operacao/` (a governança da base), aqui o conteúdo varia conforme o que a KB
representa.

## Crie as suas seções

Crie uma subpasta por grande área do seu objeto. Cada subpasta começa com um `00_mapa.md`
próprio listando seus arquivos. Exemplos por tipo de KB:

| Tipo de KB | Seções típicas em `02-conteudo/` |
| --- | --- |
| Empresa | `produtos/`, `tecnologia/`, `mensagens/`, `casos/` |
| Curso | `programa/`, `conceitos/`, `materiais/`, `referencias/` |
| Home-lab / pessoal | `infra/`, `servicos/`, `acervo/`, `rotina/` |
| Cliente / consultoria | `contexto/`, `decisoes/`, `entregaveis/` |

## Regra de uma seção boa

- tem um `00_mapa.md` que lista o que há nela e em que ordem ler;
- cada arquivo tem frontmatter com `type` (ver [schema](../09-operacao/00_schema.md));
- links relativos entre arquivos relacionados;
- nada de dado bruto sensível — isso fica fora do Git.
