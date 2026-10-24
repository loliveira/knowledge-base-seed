## Resumo

<o que esta PR muda e por quê>

## Escopo

- [ ] mudança de conteúdo
- [ ] mudança estrutural (afeta a base toda)
- [ ] governança / operação

## Camada e promoção

> Se a base tem mais de uma camada: esta mudança promove algo de uma camada para outra?

- [ ] não se aplica (camada única)
- [ ] promoção operacional → canônica — critérios de promoção atendidos

## Modelo / Agente

> Quem produziu esta contribuição.

- **Autor:** <humano / agente>
- **Modelo (se IA):** <ex.: Claude Fable 5.1 — claude-fable-5-1>
- Commit traz trailer `Co-Authored-By:`? <sim/não>

## Checklist

- [ ] frontmatter rico presente (`id`, `type`, `status`, `authority`, `audience`, `owner`, `last_reviewed`)
- [ ] links `related` atualizados
- [ ] `STATE.md` atualizado quando direção, gate, risco ou frente mudou
- [ ] fonte canônica e proveniência declaradas quando aplicável
- [ ] nenhum dado sensível adicionado — em especial, nenhum dado de paciente ou prontuário
- [ ] sai do `main` atualizado, branch única
- [ ] `python3 scripts/audit-kb.py` executado
