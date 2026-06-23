# Instruções para agentes

> Ajuste este arquivo ao seu objeto ao instanciar a KB. Se nenhum agente de IA escreve na sua
> base, você pode simplificá-lo ou removê-lo.

Este repositório é uma Knowledge Base versionada em Markdown. Agentes devem preservar a
diferença entre **material bruto**, **contexto de trabalho**, **decisão aprovada** e
**conteúdo canônico**.

## Leitura inicial obrigatória

1. [README.md](README.md)
2. [docs/01-base/00_mapa.md](docs/01-base/00_mapa.md) — as decisões fundadoras da base
3. [docs/09-operacao/00_schema.md](docs/09-operacao/00_schema.md) — convenção de frontmatter
4. [docs/09-operacao/02_separacao-de-camadas.md](docs/09-operacao/02_separacao-de-camadas.md) — o que pode subir de camada
5. Se houver operação viva: [projeto/README.md](projeto/README.md), o log e o handoff mais recentes.

## Hierarquia de confiança

1. `docs/01-base/` — fonte canônica (fundação).
2. `docs/02-conteudo/` — conhecimento do objeto; canônico quando marcado como tal.
3. `projeto/decisoes/` — decisões aprovadas ou pendentes.
4. `projeto/logs/` e `projeto/handoffs/` — estado operacional.
5. `projeto/transcricoes/` e `projeto/inbox/` — fontes brutas, **não** fatos consolidados.

## Regras de trabalho

- Não promover automaticamente uma fala de call para a camada canônica.
- Em notas derivadas, separar **fatos, decisões, inferências, dúvidas e ações**.
- Preservar a transcrição bruta; correções relevantes vão descritas na nota derivada.
- Atualizar primeiro a fonte canônica, depois seus derivados.
- Trabalhar em **branch própria** (prefixo `claude/*`, `codex/*`, …) e entregar por **Pull
  Request**, sem merge.
- Declarar o modelo: trailer `Co-Authored-By:` no commit e seção "Modelo / Agente" na PR.
- Antes de encerrar uma rodada com trabalho inacabado: atualizar log, backlog e handoff.
- Nunca commitar segredos, dados pessoais brutos ou informação sensível.

## Saída mínima de uma ingestão

- fonte bruta identificada;
- nota derivada com proveniência;
- decisões propostas ou confirmadas;
- backlog atualizado;
- impactos canônicos mapeados;
- handoff quando outro humano ou agente precisar continuar.
