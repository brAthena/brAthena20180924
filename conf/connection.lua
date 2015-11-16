--    _________________________________________________________________________________________________________
--   /                                                                                                         \
--   |                               _           _   _   _                                                     |
--   |                              | |__  _ __ / \ | |_| |__   ___ _ __   __ _                                |
--   |                              | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                               |
--   |                              | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                               |
--   |                              |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                               |
--   |                                                                                                         |
--   |                                             brAthena Script                                             |
--   |---------------------------------------------------------------------------------------------------------|
--   | Nome da configuração: connection.lua                                                                    |
--   |---------------------------------------------------------------------------------------------------------|
--   | Criado por: Protimus                                                                                    |
--   |---------------------------------------------------------------------------------------------------------|
--   | Descrição: Configurações de Conexão.                                                                    |
--   |---------------------------------------------------------------------------------------------------------|
--   | Changelog:                                                                                              |
--   | 1.0 Adição das configurações de login. [Protimus]                                                       |
--   |---------------------------------------------------------------------------------------------------------|
--   | - Anotações                                                                                             |
--   \_________________________________________________________________________________________________________/


-- CONFIGURAÇÕES DE INTER-CONEXÃO
INTER_CONNECTION = {	
};

-- CONFIGURAÇÕES DE CONEXÃO COM O SERVIDOR DE LOGIN (entrada ao servidor)
LOGIN_CONNECTION = {
	--["bind_ip"] = 127.0.0.1; 							-- Apontar para endereço de IP especifico
	["login_port"] = 6900;								-- Porta em que o serviço do login será iniciado
	--["timestamp_format"] = [%d/%b %H:%M]; 			-- Formato de horário que aparecerá nas mensagens do servidor
	["stdout_with_ansisequence"] = false; 				-- Mensagens com sequência de escape em formato ANSI, aconselhado manter desabilitado
	["console_silent"] = 0; 							-- Desabilita mensagens do console. 1 = Msg de Informação, 2 = Status, 4 = Notícias, 8 = Alertas, 16 =  Erros, 32 = Console
	["new_account"] = true; 							-- Criação de contas com _M e _F no ato de entrada ao servidor
	["new_acc_length_limit"] = true; 					-- Restrição para que um usuário e senha seja no mínimo 4 caracteres
	["allowed_regs"] = 1; 								-- Proteção contra spam de registros, 1 registro
	["time_allowed"] = 10; 								-- Proteção contra o spam de registros, 10 segundos
	["log_login"] = true; 								-- Realiza logs do servidor de login
	["date_format"] = [%Y-%m-%d %H:%M:%S]; 				-- Formato da data dos logs
	["group_id_to_connect"] = -1; 						-- Restrição de um ID de grupo para entrar no servidor
	["min_group_id_to_connect"] = -1; 					-- Restrição de um ID mínimo de grupo para entrar no servidor
	["start_limited_time"] = -1; 						-- Tempo para criação de contas.
	["check_client_version"] = false; 					-- Checagem da versão do cliente
	["client_version_to_connect"] = 20; 				-- Número da versão do cliente
	["use_MD5_passwords"] false; 						-- Utilizar senhas em formato MD5
	["ipban.enable"] = true; 							-- Banimento de IP
	--["ipban.sql.db_hostname"] = 127.0.0.1; 			-- IP onde o banco de dados que contém banimentos ficará
	--["ipban.sql.db_port"] = 3306; 					-- Porta onde o banco de dados que contém banimentos ficará
	--["ipban.sql.db_username"] = ragnarok; 			-- Usuário do banco de dados que contém banimentos ficará
	--["ipban.sql.db_password"] = ragnarok; 			-- Senha do banco de dados que contém banimentos ficará
	--["ipban.sql.db_database"] = ragnarok; 			-- Nome do banco de dados que contém banimentos ficará
	--["ipban.sql.codepage"] = null; 
	--["ipban.sql.ipban_table"] = ipbanlist; 			-- Nome da tabela de banimentos
	["ipban.dynamic_pass_failure_ban"] = true; 			-- Banimento de IP por erros consecutivos de senha
	["ipban.dynamic_pass_failure_ban_interval"] = 5; 	-- Intervalo de banimentos
	["ipban.dynamic_pass_failure_ban_limit"] = 7; 		-- Limite de banimentos
	["ipban.dynamic_pass_failure_ban_duration"] = 5; 	-- Duração do banimento 
	["ipban_cleanup_interval"] = 60; 					-- Tempo para banimentos serem limpos (segundos)
	["ip_sync_interval"] = 10; 							-- Tempo para sincronizar o servidor com DNS/IP
	["use_dnsbl"] = false; 								-- Uso de bloqueio de lista por endereços de DNS
	["dnsbl_servers"] = ["bl.blocklist.de, socks.dnsbl.sorbs.net"];
	--["account.sql.db_hostname"] = 127.0.0.1;
	--["account.sql.db_port"] = 3306;
	--["account.sql.db_username"] = ragnarok;
	--["account.sql.db_password"] = ragnarok;
	--["account.sql.db_database"] = ragnarok;
	--["account.sql.codepage"] = null; 
	--["account.sql.case_sensitive"] = false;
	--["account.sql.account_db"] = login;
	--["account.sql.accreg_db"] = global_reg_value;
	["client_hash_check"] = false; 						-- Verificação de hash MD5 no cliente. Formato: ID do grupo de usuário, valor de hash
	--["client_hash"] = 0, 113e195e6c051bb1cfb12a644bb084c5; 
	--["client_hash"] = 10, cb1ea78023d337c38e8ba5124e2338ae;
	--["client_hash"] = 99, false;
};

-- CONFIGURAÇÕES DE CONEXÃO COM O SERVIDOR DE CHAR (entrada para personagens)
CHAR_CONNECTION = {	
};
-- CONFIGURAÇÕES DE CONEXÃO COM O SERVIDOR DE MAP (entrada ao mapa)
MAP_CONNECTION = {	
};