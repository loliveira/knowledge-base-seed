---
id: "kb.base.entidades"
type: reference
category: core
title: Entidades
summary: Pessoas, produtos, projetos e lugares relevantes ao objeto da KB.
status: draft
authority: canonical
audience: [equipe, agentes]
owner: Juliana Valderrama
last_reviewed: 2026-10-24
tags: [entidades, pessoas, projetos]
related:
  - 00_mapa.md
  - 02_lexico.md
---
# Entidades e fontes canônicas

> O elenco da Physiolabs. Ajuda humanos e agentes a desambiguar nomes, entender quem/o quê
> está em jogo e localizar onde cada mudança deve ser feita.

> **Atenção à privacidade:** pacientes nunca aparecem aqui, nem como exemplo. Pessoas da
> equipe entram só com nome e papel. Veja a regra de privacidade no [mapa](00_mapa.md).

## Pessoas

- **Juliana Valderrama** — owner da KB; aprova PRs, decide promoções e responde pelo
  conteúdo canônico.
- **<Nome>** — <papel; o que faz; relação com a Physiolabs>

## Projetos / frentes

- **<Projeto>** — <descrição curta; estado>

## Produtos / ativos

- **<Produto>** — <descrição curta>

## Contrato para entidades operacionais

Quando uma entidade tem repo, operação própria ou aparece em mais de uma base, registre:

| Campo | Pergunta que responde |
| --- | --- |
| `nature` | é projeto, produto, empresa, formação, superfície ou laboratório? |
| `origin` | onde nasceu? |
| `owner` | quem decide hoje? |
| `canonical_repo` | onde mudanças devem entrar? |
| `mirrors_or_forks` | quais cópias ou derivados existem? |
| `stage` | em que estágio está? |
| `next_gate` | qual decisão ou evidência permite avançar? |

Exemplo:

```yaml
- name: <Nome da entidade>
  nature: projeto
  origin: <base ou organização de origem>
  owner: <responsável>
  canonical_repo: <URL ou caminho>
  mirrors_or_forks: []
  stage: active
  next_gate: <marco verificável>
```

Ter pasta, site ou fork não define ownership. Se duas bases mencionam a mesma entidade, uma
delas deve ser canônica e as demais devem apontar para ela. Veja
[interoperabilidade entre bases](../09-operacao/06_interoperabilidade-entre-bases.md).