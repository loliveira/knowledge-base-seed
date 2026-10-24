# KB Physiolabs

Knowledge Base privada da **Physiolabs**, empresa de fisioterapia. Conhecimento clínico,
operacional e institucional da equipe, versionado em Markdown no Git, legível por humanos e
pelo Claude (Claude Code).

Nasceu do template [knowledge-base-seed](https://github.com/loliveira/knowledge-base-seed) e
mantém suas convenções: frontmatter rico, contribuição só por Pull Request, separação entre
material bruto e conteúdo canônico.

## O que é (e o que não é)

**É:** o lugar onde a equipe acumula o que sabe e assumiu sobre a prática da Physiolabs —
abordagens, protocolos, fluxos, decisões, léxico — com histórico e autoria.

**Não é:** prontuário, sistema de gestão clínica ou repositório de dados de paciente. Dado de
saúde identificável **nunca** entra aqui, em nenhuma forma. Ver a
[política de segurança](.github/SECURITY.md).

## Por onde começar

1. [Mapa da base](docs/01-base/00_mapa.md) — as decisões fundadoras e a estrutura.
2. [Estado atual](STATE.md) — onde a base está, próximo gate, riscos.
3. [Tese](docs/01-base/01_tese.md), [Léxico](docs/01-base/02_lexico.md) e
   [Entidades](docs/01-base/03_entidades.md).
4. [Fisioterapia](docs/02-conteudo/fisioterapia/00_mapa.md) — a seção de conteúdo.

Se você é um **agente**, comece por [AGENTS.md](AGENTS.md) e pela
[trilha para agentes](views/01_para-agentes.md).

## Estrutura

```text
docs/
  01-base/          fundação: mapa, tese, léxico, entidades
  02-conteudo/      o conhecimento da Physiolabs (fisioterapia/ e seções futuras)
  09-operacao/      governança da base: schema, Git, agentes, ingestão de calls
views/              trilhas de leitura por público
type/               tipos de nota como lente de navegação
projeto/            operação viva: inbox → transcrição → nota → decisão → backlog → log → handoff
scripts/            ingestão de calls e auditoria da KB
STATE.md            estado atual, próximo gate, riscos e frentes sem movimento
AGENTS.md           instruções para agentes de IA
CONTRIBUTING.md     fluxo de contribuição (PR-only)
```

## Como contribuir

Uma sessão = uma branch = uma PR, saindo da `main` atualizada. Antes de abrir a PR, rode:

```bash
python3 scripts/audit-kb.py
```

Fluxo completo em [CONTRIBUTING.md](CONTRIBUTING.md). Merge: Juliana Valderrama.
