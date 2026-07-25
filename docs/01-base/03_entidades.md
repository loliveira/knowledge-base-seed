---
type: reference
title: Entidades
description: Pessoas, produtos, projetos e lugares relevantes ao objeto da KB.
tags: [entidades, pessoas, projetos]
timestamp: 2026-06-23
related:
  - 00_mapa.md
  - 02_lexico.md
---

# Entidades e fontes canônicas

> O elenco do seu objeto. Ajuda humanos e agentes a desambiguar nomes, entender quem/o quê
> está em jogo e localizar onde cada mudança deve ser feita.

> **Atenção à privacidade:** se a base é pública ou semi-pública, não inclua dados sensíveis
> de pessoas. Veja a regra de privacidade no seu [mapa](00_mapa.md).

## Pessoas

- **<Nome>** — <papel; o que faz; relação com o objeto>

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
