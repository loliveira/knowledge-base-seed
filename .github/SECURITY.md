# Segurança da Knowledge Base

Esta base é privada e reúne contexto operacional de uma empresa que lida com dados de
saúde. Repositório privado não é autorização para versionar qualquer material: dado de
paciente é tratado como dado sensível (LGPD, art. 11) e fica fora do Git em qualquer forma.

## Nunca versionar

- **dados de prontuário** e qualquer dado de saúde identificável de paciente (nome,
  diagnóstico, exame, prescrição, evolução, agendamento), inclusive em exemplos, testes,
  prints ou transcrições de call;
- senhas, tokens, chaves, cookies, códigos de recuperação ou URLs com credenciais;
- arquivos `.env` com valores reais;
- exports brutos, gravações ou transcrições sensíveis sem necessidade e consentimento;
- dados pessoais, contatos, documentos ou mensagens privadas sem finalidade definida;
- caminhos e configurações que exponham infraestrutura sensível.

Segredos devem ficar em um gerenciador de credenciais. Fontes grandes ou sensíveis ficam em
armazenamento apropriado e entram na KB por ponteiro seguro, com proveniência e restrição de
acesso declaradas.

## Antes de commit ou push

1. Revise `git status --short` e `git diff --cached`.
2. Confirme que temporários, exports, dados brutos e `.env` estão ignorados.
3. Procure tokens, credenciais, links-capacidade e dados pessoais no diff.
4. Confira `privacy`, `availability`, `source_refs` e consentimento quando aplicáveis.
5. Rode `python3 scripts/audit-kb.py`.

## Se algo sensível entrar no Git

1. Interrompa novos compartilhamentos.
2. Revogue ou rotacione imediatamente o segredo ou link-capacidade.
3. Restrinja o acesso ao repositório, se necessário.
4. Avalie a remoção segura do histórico e possíveis cópias ou forks.
5. Registre somente uma síntese segura do incidente e das correções.

Apagar o arquivo no commit seguinte não remove o conteúdo do histórico e não substitui a
rotação da credencial.

## Reporte

Problemas que revelem credenciais, dados pessoais ou detalhes exploráveis devem ser
comunicados ao mantenedor por um canal privado, nunca por Issue ou comentário público.
