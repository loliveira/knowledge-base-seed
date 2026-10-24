# Instruções para agentes

Este repositório é a Knowledge Base privada da Physiolabs, empresa de fisioterapia, versionada em
Markdown e mantida pela equipe com apoio do Claude (Claude Code). A base tem **uma camada
só**: tudo o que entra em `docs/` é conhecimento assumido pela equipe. Agentes devem preservar
a diferença entre **material bruto**, **contexto de trabalho**, **decisão aprovada** e
**conteúdo canônico**.

**Limite absoluto:** dados de prontuário e qualquer dado de saúde identificável de paciente
nunca entram no Git, nem em transcrição, nota, exemplo ou teste. Na dúvida, não escreva e
pergunte.

## Leitura inicial obrigatória

1. [README.md](README.md)
2. [STATE.md](STATE.md) — estado atual, próximo gate, riscos e frentes sem movimento
3. [docs/01-base/00_mapa.md](docs/01-base/00_mapa.md) — as decisões fundadoras da base
4. [docs/09-operacao/00_schema.md](docs/09-operacao/00_schema.md) — convenção de frontmatter
5. [.github/SECURITY.md](.github/SECURITY.md) — o que nunca entra no Git
6. Se houver operação viva: [projeto/README.md](projeto/README.md), o log e o handoff mais recentes.

## Hierarquia de confiança

1. `docs/01-base/` — fonte canônica (fundação).
2. `docs/02-conteudo/` — conhecimento do objeto; canônico quando marcado como tal.
3. `STATE.md` — fotografia operacional atual; aponta para fontes, não substitui evidência.
4. `projeto/decisoes/` — decisões aprovadas ou pendentes.
5. `projeto/logs/` e `projeto/handoffs/` — estado operacional.
6. `projeto/transcricoes/` e `projeto/inbox/` — fontes brutas, **não** fatos consolidados.

## Regras de trabalho

- Não promover automaticamente uma fala de call para a camada canônica.
- Em notas derivadas, separar **fatos, decisões, inferências, dúvidas e ações**.
- Preservar a transcrição bruta; correções relevantes vão descritas na nota derivada.
- Atualizar primeiro a fonte canônica, depois seus derivados.
- Trabalhar em **branch própria** com prefixo `claude/*` e entregar por **Pull Request**,
  sem merge.
- Declarar o modelo: trailer `Co-Authored-By:` no commit e seção "Modelo / Agente" na PR.
- Usar o **schema rico** de frontmatter em todo documento novo ou editado (ver
  [schema](docs/09-operacao/00_schema.md)).
- Antes de encerrar uma rodada com trabalho inacabado: atualizar log, backlog e handoff.
- Nunca commitar segredos, dados de prontuário, dados pessoais brutos ou informação sensível.

## Ritual de sessão

### Check-in

1. Ler `README.md`, `STATE.md`, o mapa e as páginas afetadas.
2. Atualizar a `main` e criar uma branch exclusiva, sem empilhar trabalho sobre outra PR.
3. Conferir backlog, log e handoff recentes quando houver operação viva.
4. Identificar a fonte canônica, o owner e as bases afetadas.
5. Confirmar privacidade, disponibilidade e consentimento antes de mover fontes.

### Checkout

1. Atualizar as páginas de destino, não apenas o intake.
2. Registrar decisões, pendências e impactos canônicos.
3. Atualizar `STATE.md` se direção, gate, risco ou estado de frente mudou.
4. Registrar log e handoff quando o trabalho precisar continuar.
5. Rodar `python3 scripts/audit-kb.py` e revisar o diff por dados sensíveis.
6. Abrir uma PR revisável; agentes não fazem merge sem autorização explícita.

## Saída mínima de uma ingestão

- fonte bruta identificada;
- nota derivada com proveniência;
- decisões propostas ou confirmadas;
- backlog atualizado;
- impactos canônicos mapeados;
- handoff quando outro humano ou agente precisar continuar.
- fonte canônica e destinos de distribuição quando mais de uma base estiver envolvida.
