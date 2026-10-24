---
id: "kb.operacao.interoperabilidade-entre-bases"
type: procedure
category: operations
title: Interoperabilidade entre bases
summary: Como bases e repositórios trocam contexto sem duplicar fontes de verdade.
status: reference
authority: reference
audience: [equipe, agentes]
owner: Juliana Valderrama
last_reviewed: 2026-10-24
tags: [interoperabilidade, canonicalidade, handoff, multiplas-bases]
related:
  - ../01-base/03_entidades.md
  - 00_schema.md
  - 02_separacao-de-camadas.md
  - ../../projeto/templates/handoff.md
---
# Interoperabilidade entre bases

> Use este módulo somente quando a KB conversa com outros repositórios, bases ou camadas.
> Comece com Markdown e links estáveis; API, MCP, fila ou event bus entram apenas quando o
> volume justificar.

## Princípio: apontar, não copiar

Para cada entidade ou evento que atravessa bases, declare uma **fonte canônica**. Ela recebe
as mudanças completas. As outras bases recebem:

- um ponteiro para a origem;
- apenas o contexto necessário ao seu território;
- o próximo movimento que lhes pertence.

Duplicação literal cria divergência silenciosa. Se uma cópia for inevitável, declare quem é
canônico e como uma correção se propaga.

## Perguntas antes de distribuir

1. Onde este contexto nasceu?
2. Quem responde por ele hoje?
3. Qual repo ou documento é canônico?
4. O que cada base precisa saber ou fazer?
5. Há restrição de privacidade, disponibilidade ou consentimento?
6. Quem aprova promoção, publicação ou mudança de ownership?

## Pacotes mínimos

### Context packet

Para transportar contexto entre bases:

```yaml
---
type: context-packet
source_refs: []
privacy: restricted
availability: partner-shared
facts: []
inferences: []
decisions: []
open_questions: []
destination: ""
owner: ""
---
```

### Cycle brief

Para iniciar um ciclo de execução: objetivo, contexto mínimo, papéis, gate, entregáveis,
critério de pronto e limites.

### Handoff

Para continuidade: pedido original, leituras feitas, mudanças, decisões preservadas,
pendências, validações e lugar exato onde continuar.

### Signal

Para um evento observado fora da base: origem, timestamp, consentimento, entidade
relacionada, evidência e destino operacional.

## Roteamento de uma call

```text
fonte bruta
    ↓
base canônica recebe intake + nota derivada
    ↓
insights são distribuídos para páginas canônicas
    ↓
outras bases recebem ponteiro + ação pertinente
    ↓
handoff registra pendências e limites de circulação
```

## Gates humanos

Agentes podem propor, mas não devem decidir sozinhos:

- promoção de conteúdo privado ou operacional;
- mudança de owner ou fonte canônica;
- publicação externa;
- circulação de dados pessoais ou material de terceiros;
- resolução automática de divergência entre bases.

## Critério de sucesso

Uma pessoa ou agente deve conseguir responder rapidamente: onde está a fonte de verdade,
quem pode decidir, qual é o próximo gate e como corrigir um derivado quando a origem mudar.