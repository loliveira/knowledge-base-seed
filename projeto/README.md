# Operação do projeto

> **Pasta opcional.** Ative se a sua KB ingere material vivo (calls, transcrições, decisões em
> andamento). Se não, **apague `projeto/` inteira** ao instanciar.

Esta é a porta de entrada do contexto **vivo** da base. Material bruto entra aqui, decisões
amadurecem aqui, e só o que foi validado é promovido para a camada canônica
(`docs/`).

O funcionamento está descrito no
[sistema operacional do projeto](../docs/09-operacao/04_sistema-operacional.md).

## Navegação

- [Inbox](inbox/) — materiais recém-chegados, sem tratamento
- [Transcrições](transcricoes/) — fala bruta + nota derivada de cada call
- [Decisões](decisoes/) — escolhas explícitas com contexto e consequência
- [Backlog](backlog/) — fila viva de próximos movimentos
- [Logs](logs/) — o que ocorreu em cada ciclo
- [Handoffs](handoffs/) — estado para outra pessoa/agente continuar
- [Templates](templates/) — estruturas reutilizáveis

## Estado atual

O estado transversal vive no [`STATE.md`](../STATE.md). Esta pasta guarda o detalhe
operacional: fila, decisões, logs, handoffs e materiais de entrada.

## Regra de ouro

Material bruto entra aqui. Decisões amadurecem aqui. Apenas o validado é promovido para
`docs/`.
