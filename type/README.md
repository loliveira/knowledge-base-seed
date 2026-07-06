# Tipos de nota

Esta pasta reúne os **tipos de nota** usados no campo `type` do frontmatter. Aqui, tipo não é
schema rígido — é uma **lente de navegação**. Ajuda pessoas e agentes a entender que papel
uma nota cumpre, sem obrigar campos extras.

Mantenha o conjunto **pequeno**. Acrescente um tipo só quando ele de fato muda como você lê a
nota.

## Tipos iniciais

| `type` | Para quê |
| --- | --- |
| `map` | índice/porta de entrada de uma área (os `00_mapa.md`) |
| `thesis` | ideia central, posição, fundamento |
| `concept` | explicação de uma ideia |
| `reference` | material de consulta, dados, entidades |
| `message` | comunicação por público (pitch, headline, FAQ) |
| `procedure` | como fazer algo (governança, fluxo, runbook) |
| `decision` | uma escolha explícita com contexto e consequência |
| `synthesis` | consolidação interpretativa de várias fontes |
| `view` | trilha de leitura (vive em `views/`) |
| `log` | registro cronológico |
| `glossary` | léxico de termos |
| `schema` | a própria convenção de metadados |

## Como usar

Declare no frontmatter:

```yaml
---
type: procedure
---
```

Veja [a convenção de frontmatter](../docs/09-operacao/00_schema.md) e as
[views](../views/00_comece-por-aqui.md).
