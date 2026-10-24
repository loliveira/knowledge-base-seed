---
id: "kb.base.mapa"
type: map
category: core
title: Mapa da KB Physiolabs
summary: Porta de entrada da KB Physiolabs — estrutura, ordem de leitura e as decisões fundadoras.
status: active
authority: canonical
audience: [equipe, agentes]
owner: Juliana Valderrama
last_reviewed: 2026-10-24
tags: [mapa, navegacao]
related:
  - 01_tese.md
  - 02_lexico.md
  - ../09-operacao/00_schema.md
  - ../../STATE.md
---
# Mapa da KB Physiolabs

> Comece por aqui. Este é o documento canônico de navegação da base.

## As decisões fundadoras

> Respostas às oito perguntas fundamentais do template de origem. Este bloco é o contrato da
> KB: mudar uma resposta é mudar a base, e exige PR aprovada pela owner.

- **Objeto:** a Physiolabs, empresa de fisioterapia — o que ela é, como opera e o que já
  assumiu como conhecimento próprio.
- **Públicos:** a equipe da empresa; agentes de IA que leem e escrevem na base.
- **Camadas:** uma camada só. Tudo o que entra aqui é conhecimento assumido pela equipe.
- **Privacidade:** privado. **Nunca entra:** dados de prontuário e qualquer dado de saúde
  identificável de paciente; segredos, tokens e credenciais; dados pessoais brutos; exports.
- **Manutenção:** só por Pull Request, sem commit direto na `main`. Ritual de sessão:
  check-in (main atualizada, uma branch) e checkout (log, auditoria, uma PR). Merge: Juliana
  Valderrama (owner da base).
- **Agentes:** Claude (Claude Code), branches `claude/*`, trailer `Co-Authored-By:` e seção
  "Modelo / Agente" na PR.
- **Frontmatter:** rico — `id`, `type`, `status`, `authority`, `audience`, `owner`,
  `last_reviewed` (ver [schema](../09-operacao/00_schema.md)).
- **Ingestão de calls:** sim. Calls e transcrições entram por `projeto/` seguindo a
  [ingestão de calls](../09-operacao/05_ingestao-de-calls.md). Transcrição com dado de
  paciente fica fora do Git; a nota derivada entra anonimizada.

## Estrutura

- `01-base/` — fundação: tese, léxico, entidades
- `02-conteudo/` — o conhecimento da Physiolabs; começa por [Fisioterapia](../02-conteudo/fisioterapia/00_mapa.md)
- `09-operacao/` — governança da própria base: schema, camadas, ingestão
- `views/` — trilhas de leitura por público
- `type/` — tipos de nota como lente
- `projeto/` — operação viva: inbox, transcrições, decisões, backlog, logs, handoffs

## Ordem de leitura sugerida

1. Este mapa
2. [Estado atual](../../STATE.md)
3. [Tese](01_tese.md)
4. [Léxico](02_lexico.md)
5. [Entidades](03_entidades.md)
6. [Mapa de conteúdo](../02-conteudo/00_mapa.md)