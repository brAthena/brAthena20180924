--    ________________________________________________________________________________________________________________________
--   /                                                                                                                        \
--   |                                       _           _   _   _                                                            |
--   |                                      | |__  _ __ / \ | |_| |__   ___ _ __   __ _                                       |
--   |                                      | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                                      |
--   |                                      | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                                      |
--   |                                      |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                                      |
--   |                                                                                                                        |
--   |                                                    brAthena Script                                                     |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | Nome da configuração: logs.lua                                                                                         |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | Criado por: Megasantos                                                                                                 |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | Descrição: Configurações de logs.                                                                                      |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | Changelog:                                                                                                             |
--   | 1.0 Adição das Configurações de logs [Megasantos]                                                                      |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | - Anotações                                                                                                            |
--   |                                                                                                                        |
--   | Nota 1: Valor optativo (true/false).                                                                                   |
--   |                                                                                                                        |
--   | Nota 2: 0 = Nunca faz log.                                                                                             |
--   |         1 = Faz log de qualquer coisa.                                                                                 |
--   |         2 - Itens de cura. (0)                                                                                         |
--   |         4 - Outros itens. (items(3) + flechas(10))                                                                     |
--   |         8 - Usavéis. (items(2) + lures, pergaminhos(11))                                                               |
--   |         16 - Armas. (4)                                                                                                |
--   |         32 - Escudos, armaduras, capacetes, acessorios, etc. (5)                                                       |
--   |         64 - Cartas. (6)                                                                                               |
--   |         128 - Acessorios para bichinhos de estimação. (8) + ovos (7) (monstros não dropam este tipo de itens)          |
--   |         256 - Log de itens caros. (se o preço for >= price_items_log)                                                  |
--   |         512 - Log de grande quantidade de itens. (se a quantidade for maior ou igual ao valor de "amount_items_log")   |
--   |         1024 - Log de itens refinados. (se a taxa de refinamento for maior ou igual ao valor de "refine_items_log")    |
--   |         2048 - Log de itens raros. (se a chance de queda for maior ou igual ao valor de "rare_items_log")              |
--   |                                                                                                                        |
--   | Nota 3: 0 = Nunca faz log.                                                                                             |
--   |         1 = Faz log de mensagens globais.                                                                              |
--   |         2 = Faz log de mensagens sussurradas. (PM)                                                                     |
--   |         4 = Faz log de mensagens de grupo.                                                                             |
--   |         8 = Faz log de mensagens de guilda.                                                                            |
--   |         16 = Faz log de mensagens do chat principal.                                                                   |
--   |         32 = Não faz log de nada quando a WoE está ligada.                                                             |
--   |                                                                                                                        |
--   |------------------------------------------------------------------------------------------------------------------------|
--   | Lembre-se que "NOTAS" dão recomendações importantes.                                                                   |
--   \________________________________________________________________________________________________________________________/

LOGS = {
	["rare_items"] =  100;                -- Fazer log de itens com taxa mínima de queda se for maior ou igual ao valor configurado. 1 = 0.01%, 100 = 1% chance de queda.
	["refine_items"] = 5;                 -- Fazer log de itens refinados se for maior ou igual ao valor configurado.
	["price_items"] = 1000;               -- Fazer log se o preço atual do item for maior ou igual ao valor configurado.
	["amount_items"] = 100;               -- Fazer log se a quantidade atual do item for maior ou igual ao valor configurado.
	["branch"] = false;                   -- Fazer log do uso de galho seco?
	["filter"] = 1;                       -- Fazer log do tipo de item. (Nota 2)
	["zeny"] = 0;                         -- Fazer log de alterações de zeny? 0 = não faz log, 1 = faz log de qualquer mudança, 2 a 1000000 = quantidade minima de zenys para salvar log.
	["commands"] = true;                  -- Fazer log dos comandos de Game Master ?
	["npc"] = false;                      -- Fazer log dos NPCs?
	["chat"] = 0;                         -- Fazer log de chat. (Nota 3)
	["mvpdrop"] = false;                  -- Fazer log dos MvP mortos?
	["chat_woe_disable"] = false;         -- Desabilitar logs de mensagens do chat principal durante a WoE?
	["cards"] = false;                    -- Fazer log de cartas ?
	["buying_store"] = false;             -- Fazer log da loja de compras?
	["item_vending"] = false;             -- Fazer log de venda?
	["consume"] = false;                  -- Fazer log de ao consumir item
	["mob_pick_drop"] = false;            -- Fazer log da queda de itens de monstros?
	["pc_pick_drop"] = true;              -- Fazer log ao pegar um item do chão?
	["npc_buy_sell"] = false;             -- Fazer log ao comprar itens de NPC?
	["produce"] = true;                   -- Fazer log ao produzir itens?
	["storage"] = false;                  -- Fazer log do armazém?
	["gstorage"] = false;                 -- Fazer log do armazém do clã?
	["remove_item"] = false;              -- Fazer log de itens removidos?
	["mail"] = false;                     -- Fazer log ao enviar item para algum personagem?
	["trade"] = false;                    -- Fazer log de negociação?
	["buycash"] = false;                  -- Fazer log de itens comprado na loja de cash?
};

LOGS_NAME = {
	branch_db   = "branchlog";
	pick_db     = "pickdrop_log";
	zeny_db     = "zenylog";
	mvpdrop_db  = "mvplog";
	gm_db       = "atcommandlog";
	npc_db      = "npclog";
	chat_db     = "chatlog";
	buystore_db = "buyingstore_log";
	card_db     = "card_log";
	cash_db     = "cashitemshop";
	gstore_db   = "guild_store_log";
	consume_db  = "itemconsume_log";
	produce_db  = "itemproduce_log";
	remove_db   = "item_get_removelog";
	mail_db     = "mail_log";
	npcshop_db  = "npcshop_log";
	storage_db  = "storage_log";
	trade_db    = "trade_log";
	vending_db  = "vending_log";
};