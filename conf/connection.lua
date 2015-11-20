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
	["userid"] = ["s1"];								-- Configuração de usuário 
	["passwd"] = ["p1"];								-- Configuração de senha
	["server_name"] = ["brAthena"];						-- Nome do Servidor
	["wisp_server_name"] = ["Server"];					-- Nome do Servidor em mensagens do servidor
	--//login_ip: 127.0.0.1								-- Endereço de IP do serviço de login
	--["bind_ip"] = 127.0.0.1; 							-- Apontar para endereço de IP especifico
	["login_port"] = 6900;								-- Porta em que o serviço do login será iniciado
	--//char_ip: 127.0.0.1								-- Endereço de IP do serviço de char
	["char_port"] = 6121;								-- Porta em que o serviço de char será iniciado
	--["timestamp_format"] = [%d/%b %H:%M]; 			-- Formato de horário que aparecerá nas mensagens do servidor
	["stdout_with_ansisequence"] = false; 				-- Mensagens com sequência de escape em formato ANSI, aconselhado manter desabilitado
	["console_silent"] = 0; 							-- Desabilita mensagens do console. 1 = Msg de Informação, 2 = Status, 4 = Notícias, 8 = Alertas, 16 =  Erros, 32 = Console
	["char_server_type"] = 0;							-- Modo em que o serviço de char será executado. 0 = Normal, 1 = Manutenção, 2 = Maior de 18, 3 = Servidor Pago, 4= Servidor Gratuito
	["char_maintenance_min_group_id"] = 99;				-- ID de grupo mínimo para se entrar no servidor char quando char_server_type tem valor 1
	["char_new"] = 1;									-- Possibilita a criação de novos personagens ou não
	["char_new_display"] = 0;							-- Mostrar "novidades" na lista do servidor.
	["max_connect_user"] -1;							-- Configuração do máximo de usuários que o servidor suporta.
	["gm_allow_group"] = -1;							-- ID do grupo que tem permissão para ignorar o limite de usuários do servidor.
	["autosave_time"] = 60;								-- Em quanto tempo o servidor salvará todos os arquivos? Aplicado somente a guildas
	["save_log"] = true;								-- Sempre salvar logs
	["start_point"] = ["iz_int,97,90"];					-- Coordenadas onde o personagem nascerá no jogo para renovação
	["start_point_pre"] = ["new_1-1,53,111"];			-- Coordenadas onde o personagem nascerá no jogo para pre-renovação
	["start_items"] = 1201,1,0,2301,1,0;				-- Itens em que o personagem começará no jogo
	["start_zeny"] = 0;									-- Dinheiro (zenys), que o personagem começará no jogo
	["fame_list_alchemist"] = 10;						-- Número máximo de jogadores na lista da fama
	["fame_list_blacksmith"] = 10;						-- Número máximo de jogadores na lista da fama
	["fame_list_taekwon"] = 10;							-- Número máximo de jogadores na lista da fama
	["guild_exp_rate"] = 100;							-- Experiência da guilda doada pelo personagem
	["unknown_char_name"] = ["Desconhecido"];			-- Nome usado para personagens desconhecidos (com nomes inválidos)
	["log_char"] = 1;									-- Gerar um log do serviço de personagens
	["name_ignoring_case"] = false;						-- Permite nomes com letras diferentes, case-sensitive
	["char_name_option"] = 1;							-- Configuração de opções para nomes de personagem. 0 = Sem Restrição (básico), 1 = Somente letras/símbolos na opção 'char_name_letters', 2 = Letras/Símbolos na opção 'char_name_letters' são ignoradas.
	["char_name_letters"] = ["abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"]; -- Letras e símbolos permitidos
	["char_del_level"] = 0;								-- Restrição para deletar personagem por nível de base
	["char_del_delay"] = 86400;							-- Tempo de espera entre um deletar de personagem
	["char_aegis_delete"] = 0;							-- Não permite que o personagem seja deletado se estiver em um clã ou grupo. Padrão 0 = Desabilitado
	["db_path"] = ["db"];								-- Pasta onde encontram-se os arquivos de database (item_db.txt,mob_db.txt etc.)
};
-- CONFIGURAÇÕES DE CONEXÃO COM O SERVIDOR DE MAP (entrada ao mapa)
MAP_CONNECTION = {	
};

-- CONFIGURAÇÕES DE REDE TCP/IP
NETWORK = {
	["lan_subnets"] = "127.0.0.1:255.0.0.0";--"192.168.1.1:255.255.255.0";	-- Configure aqui qualquer subrede LAN em que o servidor se encontra
	["allowed"] = "0.0.0.0:0.0.0.0";--,"127.0.0.1:255.0.0.0";	 			-- Configure aqui qualquer intervalo de IPs que estejam autorizados a entrar no servidor
	["trusted"] = "127.0.0.1:255.0.0.0";									-- Configure aqui qualquer intervalo de IPs que estejam autorizados a entrar no servidor. Essa configuração desabilita IPBan.
};

-- CONFIGURAÇÕES DE PACOTES E SEUS TRATAMENTOS
PACKETS = {
	["debug"] = false;								-- Mostra relatórios de depuração
	["stall_time"] = 60;							-- Tempo que um soquete fica aberto antes de fechar a conexão
	["socket_max_client_packet"] = 24576;			-- Máximo de pacotes por cliente
	["enable_ip_rules"] true;						-- Habilita regras de IP
	["order"] = ["deny,allow"];						-- Denny = Proibição, Allow = Permissão
	["ddos_interval"] = 3000;						-- Intervalo para tentativas de conexão consecutivas (Proteção a ataque DoS)
	["ddos_count"] = 5;								-- Tentativas consecutivas
	["ddos_autoreset"] = 600000;					-- Tempo para anular possível ameaça (10 minutos)
};