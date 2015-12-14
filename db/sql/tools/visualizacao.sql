/*_________________________________________________________________________
 /                                                                         \
 |                  _           _   _   _                                  |
 |                 | |__  _ __ / \ | |_| |__   ___ _ __   __ _             |
 |                 | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |            |
 |                 | |_) | | / ___ \ |_| | | |  __/ | | | (_| |            |
 |                 |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|            |
 |                                                                         |
 |                       brAthena © 2015 - Banco de Dados                  |
 |                                Visualizações                            |
 | - Arquivo contendo consultas por meio de SELECT nas quais geram-se,     |
 | visualizações para maior facilidade na consulta de tarefas simples,     |
 | podendo liberar acesso restrito a um moderador ou grupo de usuários...  |
 | até mesmo a jogadores, para maiores informações                         |
 \_________________________________________________________________________/
*/

-- IMPORTANTE: Valores fictíssios para IDs, altere conforme sua necessidade.

-- Verifica todos os comandos de '@' de uma conta especifica.
-- Útil para disponibilizar o que GMs fazem no servidor ou para pesquisa mais rápida nos logs por parte do admin
-- Para adicionar mais de uma conta, utilize a cláusula "AND".
CREATE VIEW comando_gm AS SELECT char_name, command FROM atcommandlog WHERE account_id = 1; 

-- Verifica cartas especificass que foram dropadas no servidor.
-- Útil para disponibilizar verificações de cartas de MvP e quem as têm, para mostrar
-- transparência no servidor.
CREATE VIEW carta_dropada AS SELECT CharName, CardName FROM card_log WHERE Card_ID = 1; 