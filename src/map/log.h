/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/map/log.h                                                              *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licença GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#ifndef MAP_LOG_H
#define MAP_LOG_H

#include "common/cbasetypes.h"
#include "common/sql.h"

/**
 * Declarations
 **/
struct item;
struct item_data;
struct map_session_data;
struct mob_data;
struct mail_message;

/**
 * Defines
 **/
#ifdef SQL_INNODB
// database is using an InnoDB engine so do not use DELAYED
	#define LOG_QUERY "INSERT"
#else
// database is using a MyISAM engine so use DELAYED
	#define LOG_QUERY "INSERT DELAYED"
#endif

/**
 * Enumerations
 **/
typedef enum e_log_chat_type {
	LOG_CHAT_GLOBAL      = 0x01,
	LOG_CHAT_WHISPER     = 0x02,
	LOG_CHAT_PARTY       = 0x04,
	LOG_CHAT_GUILD       = 0x08,
	LOG_CHAT_MAINCHAT    = 0x10,
} e_log_chat_type;

typedef enum _log_action_type{
	LOG_ACTION_GET = 0,
	LOG_ACTION_DROP,
	LOG_ACTION_MVP_AWARD,
	LOG_ACTION_PARTY_SHARE,
	LOG_ACTION_STEAL,
	LOG_ACTION_LOOT,
	LOG_ACTION_COMMAND_DEL,
	LOG_ACTION_COMMAND_GET
} log_action_type;

struct log_interface {
	bool enable_logs;
	struct {
		int item_type2[4], zeny;
		char table_name[20][64];
		bool log_cards, log_buyingstore, log_vending, log_consume, log_mob_pick_drop, log_pc_pick_drop, log_npc_buy_sell, log_storage,
		log_gstorage, log_get_remove_item, log_mail, log_trade, log_produce, branch, mvpdrop,
		commands, npc, buycash, item_type[7], log_chat2[6];
	} config;
	/* */
	char db_ip[32];
	int db_port;
	char db_id[32];
	char db_pw[100];
	char db_name[32];
	Sql *mysql_handle;
	/* */
	void (*zeny) (struct map_session_data* sd, char *type, struct map_session_data *src_sd, int amount);
	void (*npc) (struct map_session_data *sd, const char *message);
	void (*chat) (e_log_chat_type type, int type_id, int src_charid, int src_accid, const char *mapname, int x, int y, const char *dst_charname, const char *message);
	void (*atcommand) (struct map_session_data *sd, const char *message);
	void (*branch) (struct map_session_data *sd);

	void (*config_read) (void);
	void (*sql_init) (void);
	void (*sql_final) (void);

	bool (*should_log_item) (int nameid, int amount, int refine, struct item_data *id);

	// brAthena [GreenStage]
	void (*cash_buy_sql) (struct map_session_data *sd, char *type, char *npc_name, struct item *itm, int amount, int price);
	void (*card) (struct map_session_data *sd, int slot, char *type, struct item *itm);
	void (*trade) (int zeny, struct map_session_data *sd1, struct map_session_data *sd2, struct item *itm, int amount);
	void (*vending) (struct map_session_data *sd, struct map_session_data *vsd, struct item *itm, int zeny, int amount);
	void (*npc_shop) (struct map_session_data *sd, char *name, struct item *itm, int unit_cost, int amount, int type);
	void (*pickdrop) (struct map_session_data *sd, struct mob_data *md, struct item *itm, int amount, char *type, char *from);
	void (*consume) (struct map_session_data *sd, struct item *itm, int amount, char *type);
	void (*produce) (struct map_session_data *sd, struct item *itm, int amount, char *type);
	void (*storage) (struct map_session_data *sd, struct item *itm, int amount, char type);
	void (*gstorage) (struct map_session_data *sd, struct item *itm, int amount, char type);
	void (*mail) (struct mail_message *msg);
	void (*buyingstore) (struct map_session_data *bsd, struct map_session_data *vsd, struct item* itm, int zeny, int amount);
	void (*item_getrem) (int tp, struct map_session_data *sd, struct item *itm, int amount, char *type);
};

struct log_interface *logs;

#ifdef BRATHENA_CORE
void log_defaults(void);
#endif // BRATHENA_CORE

#endif /* MAP_LOG_H */
