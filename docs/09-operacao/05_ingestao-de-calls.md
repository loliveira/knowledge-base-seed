---
id: "kb.operacao.ingestao-de-calls"
type: procedure
category: operations
title: Ingestão de calls
summary: Como uma reunião ou transcrição entra na base sem virar bagunça.
status: active
authority: canonical
audience: [equipe, agentes]
owner: Juliana Valderrama
last_reviewed: 2026-10-24
tags: [calls, ingestao, transcricao]
related:
  - 04_sistema-operacional.md
  - ../../scripts/nova-ingestao.sh
  - ../../projeto/templates/nota-derivada-de-call.md
---
# Ingestão de calls

Convenção para transformar uma reunião em conhecimento útil, preservando a fonte e
distribuindo os insights.

## Passos

1. **Identifique a fonte e a sensibilidade.** Registre onde a gravação/transcrição está, quem
   pode acessá-la e se há consentimento para circulação ou publicação.
2. **Crie o par de arquivos quando o bruto puder ser versionado** com
   [`scripts/nova-ingestao.sh`](../../scripts/nova-ingestao.sh): um
   `*_transcricao-bruta.md` e um `*_notas-e-decisoes.md`. Se o bruto for longo ou sensível,
   mantenha-o fora do Git e crie apenas a nota de intake com um ponteiro seguro.
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

Se a call interessa a mais de uma base, escolha **uma fonte de verdade** para o intake
completo. As outras recebem ponteiros e apenas o conhecimento que pertence ao território
canônico delas. Veja [interoperabilidade entre bases](06_interoperabilidade-entre-bases.md).

## Onde fica o quê

- **intake** (contexto, síntese, ponteiros) → `projeto/transcricoes/`
- **insights** → distribuídos para as páginas de projeto/pessoa/conceito
- **transcrição bruta longa ou sensível** → fora do Git (ex.: Drive), referenciada por link

## Metadados recomendados para o intake

```yaml
---
id: call-AAAA-MM-DD-assunto
type: call-intake
status: reviewed
privacy: restricted
availability: repo-private
participants: []
source_refs: []
distribution_targets: []
decisions: []
open_questions: []
publication_consent: unknown # unknown | granted | denied | partial
---
```

Não registre tokens ou URLs com credenciais embutidas. Um link compartilhável pode ser uma
capacidade de acesso e deve seguir a [política de segurança](../../.github/SECURITY.md).

## Princípio

A transcrição bruta é fonte, não fato. O conhecimento mora na **nota derivada** e nas páginas
canônicas que ela alimenta.