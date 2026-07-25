# Knowledge Base Seed

Template para iniciar uma **Knowledge Base (KB) versionada em Markdown** — conhecimento
estratégico, técnico, editorial ou operacional vivendo em arquivos simples, no Git, legível
por humanos **e** por agentes de IA. Sem depender de CMS, sem lock-in.

Esta semente nasceu de KBs reais em operação (uma empresa, um curso, um home-lab pessoal) e
condensa as convenções que sobreviveram ao uso. Clone, responda algumas perguntas, e você tem
uma KB funcionando com governança, navegação e prontidão para agentes desde o dia 1.

## O que é (e o que não é)

**É:** uma estrutura de pastas + convenções de frontmatter + rituais de contribuição para
acumular conhecimento de forma durável e portátil.

**Não é:** um wiki com banco de dados, um CMS, ou um lugar para dados brutos sensíveis
(segredos, dados pessoais, exports). Isso fica fora do Git.

## Por onde começar

Leia, nesta ordem, a pasta **[docs/00-comece-aqui](docs/00-comece-aqui/)**:

1. **[As perguntas fundamentais](docs/00-comece-aqui/01_perguntas-fundamentais.md)** — 8 perguntas que definem a sua KB antes de escrever qualquer linha.
2. **[Ferramentas](docs/00-comece-aqui/02_ferramentas.md)** — o que instalar e por quê.
3. **[Como instanciar](docs/00-comece-aqui/03_como-instanciar.md)** — passo a passo para transformar esta semente na *sua* KB.

Se você é um **agente** (Claude, Codex, etc.), comece por **[AGENTS.md](AGENTS.md)**.

## Três níveis de adoção

Não é preciso ativar o sistema inteiro no primeiro dia:

1. **Constituir:** responda as perguntas, escreva mapa e tese, crie uma área de conteúdo e a
   primeira nota.
2. **Operar:** mantenha [`STATE.md`](STATE.md), backlog, decisões, logs, calls e handoffs.
3. **Conectar:** declare fontes canônicas e use o protocolo de interoperabilidade quando a KB
   conversar com outras bases ou sistemas.

## Estrutura

```text
docs/
  00-comece-aqui/   perguntas, ferramentas e guia de instanciação (apague depois de ler)
  01-base/          fundação: mapa, tese, léxico, entidades
  02-conteudo/      o conhecimento do seu objeto (você cria as seções)
  09-operacao/      governança da própria base: schema, camadas, ingestão
views/              trilhas de leitura por público (≠ estrutura de pastas)
type/               tipos de nota como lente de navegação
projeto/            "SO de projeto": inbox → nota → decisão → backlog → log → handoff (opcional)
scripts/            utilitários para ingestão e auditoria leve da KB
STATE.md            estado atual, próximo gate, riscos e frentes sem movimento
AGENTS.md           instruções para agentes de IA
CONTRIBUTING.md     fluxo de contribuição (PR-only)
```

O [`STATE.md`](STATE.md) é a leitura operacional curta. O mapa explica **o que a base é**; o
estado registra **onde ela está agora**.

Antes de abrir uma PR, rode `python3 scripts/audit-kb.py`. A auditoria verifica frontmatter
estrutural, UTF-8 na leitura e links locais. Para limites de dados e resposta a incidentes,
veja a [política de segurança](.github/SECURITY.md).

## Uso esperado

- documentação institucional, de produto ou de curso
- base pública, semi-pública ou privada
- fonte de contexto para agentes e MCP
- memória operacional versionada (calls, decisões, handoffs)
