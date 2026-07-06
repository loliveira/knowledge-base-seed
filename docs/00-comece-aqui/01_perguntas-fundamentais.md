---
type: guide
title: As perguntas fundamentais
description: Oito perguntas para responder antes de escrever a primeira linha da sua KB.
tags: [onboarding, decisao, kickoff]
timestamp: 2026-06-23
related:
  - 02_ferramentas.md
  - 03_como-instanciar.md
  - ../09-operacao/02_separacao-de-camadas.md
  - ../09-operacao/00_schema.md
---

# As perguntas fundamentais

Antes de criar pastas e arquivos, responda estas oito perguntas. As respostas decidem o
formato, a governança e o tamanho da sua KB. Não há resposta certa — há a resposta *sua*.

Sugestão: copie este bloco para a primeira página da sua base (`docs/01-base/00_mapa.md`) já
respondido. Ele vira o contrato da KB.

## 1. Qual é o objeto?

O que esta KB representa? Uma empresa? Um produto? Um curso? Um cliente? Sua própria vida e
infraestrutura (home-lab)? O objeto define o vocabulário e as seções de `docs/02-conteudo/`.

## 2. Quem lê?

Só você? Uma equipe? O público? Agentes de IA? Cada audiência diferente vira uma **view** em
`views/` e influencia o campo `audience` do frontmatter. Liste os 2-3 públicos principais.

## 3. Quantas camadas?

A sua KB é única, ou ela **alimenta outra**? Exemplos reais:

- **uma camada** — tudo vive aqui (comum em projetos pessoais e cursos).
- **operacional → coletiva** — uma camada privada de leitura/direção que *promove* o que
  amadureceu para uma camada institucional compartilhável.

Se houver mais de uma camada, defina a **regra de promoção** (ver
[separação de camadas](../09-operacao/02_separacao-de-camadas.md)).

## 4. Privado ou público?

Define o que **nunca** entra no Git: segredos, tokens, preços, status interno de cliente,
nomes sensíveis, dados pessoais brutos, exports. Decida isso cedo — é caro consertar depois.

## 5. Quem mantém, e como?

- Contribuição só por Pull Request? (recomendado)
- Quem dá merge?
- Você adota o ritual **uma sessão = uma branch = uma PR** saindo do `main` atualizado?
  (evita branches empilhadas e conflitos — ver [CONTRIBUTING](../../CONTRIBUTING.md))

## 6. Quais agentes vão ler e escrever?

Claude? Codex? Outro? Se mais de um, adote o **protocolo de identificação de modelo**
(trailer `Co-Authored-By:`, seção no PR, prefixo de branch `claude/*`, `codex/*`) e mantenha
o registro vivo em [colaboração com modelos](../09-operacao/03_colaboracao-com-modelos.md).
Ajuste o [AGENTS.md](../../AGENTS.md) para o seu objeto.

## 7. Frontmatter leve ou rico?

- **Leve (padrão, OKF):** só `type` obrigatório. Comece por aqui.
- **Rico:** campos como `authority`, `audience`, `status`, `owner` — útil para KB
  institucional consumida por vários agentes.

Decida o nível em [schema](../09-operacao/00_schema.md). Dá para começar leve e enriquecer
depois.

## 8. Você vai ingerir calls, transcrições, materiais brutos?

Se **sim**, ative a pasta [`projeto/`](../../projeto/) e o
[sistema operacional de projeto](../09-operacao/04_sistema-operacional.md). Se **não**,
apague `projeto/` — ela é opcional.

---

Respondidas as oito, siga para **[como instanciar](03_como-instanciar.md)**.
