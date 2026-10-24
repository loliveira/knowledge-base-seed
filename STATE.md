---
id: "kb.state"
type: state
category: core
title: Estado atual
summary: Leitura operacional curta da KB Physiolabs — frentes, decisões vigentes, próximo gate e lacunas.
status: active
authority: canonical
audience: [equipe, agentes]
owner: Juliana Valderrama
last_reviewed: 2026-10-24
related:
  - docs/01-base/00_mapa.md
  - projeto/README.md
---
# Estado atual

> Atualize este arquivo quando mudar a direção da base. Ele não substitui backlog nem log:
> mostra o estado que uma pessoa ou agente precisa compreender antes de agir.

## Em uma frase

A KB Physiolabs acabou de ser instanciada: governança, estrutura e regras de privacidade
estão definidas, mas a tese ainda não foi aprovada e a seção Fisioterapia está vazia.

## Frentes ativas

- **Instanciação da base** — oito decisões fundadoras registradas no mapa; schema rico,
  AGENTS.md e política de segurança ajustados — próximo gate: aprovação da tese pela owner.
- **Fisioterapia** — seção criada com mapa e critérios de entrada, sem notas — próximo gate:
  primeira nota de conteúdo (abordagem, protocolo ou fluxo de atendimento) por PR.

## Decisões vigentes

- Base privada, de camada única, mantida só por Pull Request; merge pela owner.
- Dado de prontuário e de paciente identificável nunca entra no Git, nem em exemplo ou
  transcrição; nota derivada de call entra anonimizada.
- Frontmatter rico obrigatório em `docs/`, `views/` e `STATE.md`.
- Claude (Claude Code) é o único agente que escreve, em branches `claude/*`.

## Riscos e bloqueios

- Sem tese aprovada, a base não tem o critério que decide o que é relevante ao conteúdo.
- Léxico e entidades ainda são esqueleto: termos clínicos e papéis da equipe não foram
  definidos, o que pode gerar ambiguidade na primeira ingestão de call.

## Sem movimento

- **Ingestão de calls** — fluxo pronto em `projeto/`, nenhuma call ingerida; esperando a
  primeira reunião da equipe a registrar.

## Próxima revisão

- **Data ou gatilho:** aprovação da tese ou primeira nota em Fisioterapia, o que vier antes
- **Responsável:** Juliana Valderrama