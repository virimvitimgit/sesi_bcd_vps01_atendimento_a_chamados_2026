# Dicionário de Dados

| Entidade | Atributo | Tipo | Tamanho | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| Histórico/Comentário | id | int | 11 | chave primária |
| Histórico/Comentário | id_usuario | int | 11 | chave estrangeira, referencia: Usuário(id) |
| Histórico/Comentário | id_chamado | int | 11 | chave estrangeira, referencia: Chamado(id) |
| Histórico/Comentário | descricao | varchar | 200 | descrição do chamado |
| Histórico/Comentário | tipo | varchar | 20 | tipo do porque o chamado foi realizado |
| Histórico/Comentário | data_hora | varchar | 15 | tempo decorrido do chamado |
| Usuário | id | int | 11 | chave primária |
| Usuário | nome | varchar | 40 | nome do usuário |
| Usuário | departamento | varchar | 20 | área em que o usuário trabalha |
| Usuário | email | varchar | 15 | email do usuário |
| Usuário | cargo | varchar | 15 | cargo do usuário |
| Usuário | telefone | decimal | 15 | telefone do usuário |
| Usuário | status | varchar | 20 | condição do usuário |
| Chamado | id | int | 11 | chave primária |
| Chamado | id_usuario | int | 11 | chave estrangeira, referencia: Usuário(id) |
| Chamado | id_tecnico | int | 11 | chave estrangeira, referencia: Tecnico(id) |
| Chamado | id_categoria | int | 11 | chave estrangeira, referencia: Categoria(id) |
| Chamado | data_abertura | varchar | 15 | data de inicio do chamado |
| Chamado | data_fechamento | varchar | 15 | data do termino do chamado |
| Chamado | descricao | varchar | 200 | descrição do chamado |
| Chamado | prioridade | varchar | 20 | nivel de prioridade do problema |
| Chamado | status | varchar | 20 | status do chamado |
| Chamado | titulo | varchar | 20 | titulo de indicação do chamado |
| Categoria | id | int | 11 | chave primária |
| Categoria | nome | varchar | 40 | nome da categoria |
| Categoria | descricao | varchar | 200 | descrição da categoria |
| Tecnico | id | int | 11 | chave primária |
| Tecnico | nome | varchar | 40 | nome do tecnico |
| Tecnico | especialidade | varchar | 15 | especialidade do tecnico |
| Tecnico | email | varchar | 15 | email do tecnico |
| Tecnico | status | varchar | 20 | status do tecnico |
