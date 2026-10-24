---
id: "kb.operacao.separacao-de-camadas"
type: procedure
category: operations
title: Separação de camadas e regra de promoção
summary: Quando uma KB alimenta outra — o que fica, o que sobe, o que vira ação.
status: reference
authority: reference
audience: [equipe, agentes]
owner: Juliana Valderrama
last_reviewed: 2026-10-24
tags: [camadas, governanca, promocao]
related:
  - ../01-base/00_mapa.md
  - 04_sistema-operacional.md
---
# Separação de camadas e regra de promoção

> A KB Physiolabs tem **uma camada só**, então este documento não se aplica hoje. Fica como
> referência para o caso de a base passar a **alimentar outra** — por exemplo, uma camada operacional privada que promove conhecimento
> para uma camada institucional compartilhável.

Esta é uma das lições mais úteis aprendidas operando KBs reais: nem tudo que você escreve
deve viver no mesmo lugar. Separar camadas evita misturar leitura pessoal/operacional com
conhecimento institucional já assumido.

## Um modelo de duas camadas

| Camada | O que entra | Exemplo |
| --- | --- | --- |
| **Operacional** (privada) | leitura, direção, tensões, apostas, preparação de conversas, status de cliente | "o que eu acho que devemos fazer no próximo ciclo" |
| **Coletiva** (compartilhável) | conhecimento validado, assumido pela organização, não sensível | "a tese oficial", "o caso publicável" |

## A regra prática

```text
Se é leitura/direção operacional sua          → fica na camada operacional.
Se é conhecimento assumido pela organização   → promove para a camada coletiva.
Se exige ação de equipe (responsável + prazo) → vai para o gestor de tarefas.
Se virou ativo durável                        → versiona no Git.
```

## Critério de promoção

Uma informação só sobe da camada operacional para a coletiva quando tem:

- **origem identificada** (de onde veio);
- **formulação clara** (madura, não rascunho solto);
- **responsável humano** pela decisão;
- **território canônico definido** (onde exatamente entra na camada de cima);
- **impactos em derivados mapeados** (o que mais precisa mudar junto);
- e **não é sensível** (sem pessoas, preços ou status interno).

Promoção é **proposta via PR**, não cópia automática. Quem mantém a camada coletiva revisa e
decide.