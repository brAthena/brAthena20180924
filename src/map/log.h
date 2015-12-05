/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
******************************************************************************
*                          www.brathena.org                                  *
*****************************************************************************/

#ifndef MAP_LOG_H
#define MAP_LOG_H

#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"

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

// Máximo de caracteres para nomes das tabelas de logs [Megasantos]
#define SIZE_LOGS 20

/**
 * Macros para logs LUA [Megasantos]
**/

/* Macro para logs inteiros */
#define LOGS_LUA_INTEGER(state, idx, k) do { \
	lua_getfield(state, idx, #k); \
if (!lua_isinteger(L, -1)) { \
	ShowWarning("A configura%c%co '"CL_LT_YELLOW"%s"CL_RESET"' permite apenas n%cmeros inteiros.\n", 135, 198, #k, 163); \
	lua_pop(L, 1); \
	continue; \
} \
	logs->config.k = (int)lua_tointeger(L, -1); \
	count += 1; \
	lua_pop(L, 1); \
} while (0)

/* Macro para logs booleanos */
#define LOGS_LUA_BOOLEAN(state, idx, k) do { \
	lua_getfield(state, idx, #k); \
if (!lua_isboolean(L, -1)) { \
	ShowWarning("A configura%c%co '"CL_LT_YELLOW"%s"CL_RESET"' permite apenas valores booleanos.\n", 135, 198, #k); \
	lua_pop(L, 1); \
	continue; \
} \
	logs->config.k = lua_toboolean(L, -1); \
	count += 1; \
	lua_pop(L, 1); \
} while (0)

/* Macro para nome do banco de dados */
#define LOGS_LUA_STRINGS(state, idx, k) do { \
	size_t len; \
	lua_getfield(state, idx, #k); \
if (!lua_isstring(L, -1)) { \
	ShowWarning("A configura%c%co '"CL_LT_YELLOW"%s"CL_RESET"' permite apenas strings.\n", 135, 198, #k); \
	lua_pop(L, 1); \
	continue; \
} \
	safestrncpy(logs->config.k, lua_tolstring(L, -1, &len), SIZE_LOGS); \
if(len > SIZE_LOGS) { \
	ShowWarning("A configura%c%co '"CL_LT_YELLOW"%s"CL_RESET"' permite somente '"CL_LT_YELLOW"%d"CL_RESET"' caracteres, altere o nome para fazer a leitura.\n", 135, 198, #k, SIZE_LOGS); \
	lua_pop(L, 1); \
	continue; \
} \
	count += 1; \
	lua_pop(L, 1); \
} while (0)

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
	// all
	LOG_CHAT_ALL         = 0xFF,
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


/// filters for item logging
typedef enum e_log_filter {
	LOG_FILTER_NONE     = 0x000,
	LOG_FILTER_ALL      = 0x001,
	// bits
	LOG_FILTER_HEALING  = 0x002,  // Healing items (0)
	LOG_FILTER_ETC_AMMO = 0x004,  // Etc Items(3) + Arrows (10)
	LOG_FILTER_USABLE   = 0x008,  // Usable Items(2) + Scrolls, Lures(11) + Usable Cash Items(18)
	LOG_FILTER_WEAPON   = 0x010,  // Weapons(4)
	LOG_FILTER_ARMOR    = 0x020,  // Shields, Armors, Headgears, Accessories, Garments and Shoes(5)
	LOG_FILTER_CARD     = 0x040,  // Cards(6)
	LOG_FILTER_PETITEM  = 0x080,  // Pet Accessories(8) + Eggs(7) (well, monsters don't drop 'em but we'll use the same system for ALL logs)
	LOG_FILTER_PRICE    = 0x100,  // Log expensive items ( >= price_log )
	LOG_FILTER_AMOUNT   = 0x200,  // Log large amount of items ( >= amount_log )
	LOG_FILTER_REFINE   = 0x400,  // Log refined items ( refine >= refine_log ) [not implemented]
	LOG_FILTER_CHANCE   = 0x800,  // Log rare items and Emperium ( drop chance <= rare_log )
} e_log_filter;

struct log_interface {
	struct {
		bool enable_logs;
		bool chat_woe_disable;
		bool trade;
		bool mail;
		bool remove_item;
		bool gstorage;
		bool storage;
		bool produce;
		bool npc_buy_sell;
		bool pc_pick_drop;
		bool mob_pick_drop;
		bool consume;
		bool item_vending;
		bool buying_store;
		bool cards;
		bool branch;
		bool mvpdrop;
		bool commands;
		bool npc;
		bool buycash;
		int filter;
		int rare_items;
		int refine_items;
		int price_items;
		int amount_items;
		int zeny;
		int chat;
		char branch_db[SIZE_LOGS];
		char pick_db[SIZE_LOGS];
		char zeny_db[SIZE_LOGS];
		char mvpdrop_db[SIZE_LOGS];
		char gm_db[SIZE_LOGS];
		char npc_db[SIZE_LOGS];
		char chat_db[SIZE_LOGS];
		char buystore_db[SIZE_LOGS];
		char card_db[SIZE_LOGS];
		char cash_db[SIZE_LOGS];
		char gstore_db[SIZE_LOGS];
		char consume_db[SIZE_LOGS];
		char produce_db[SIZE_LOGS];
		char remove_db[SIZE_LOGS];
		char mail_db[SIZE_LOGS];
		char npcshop_db[SIZE_LOGS];
		char storage_db[SIZE_LOGS];
		char trade_db[SIZE_LOGS];
		char vending_db[SIZE_LOGS];
	} config;
	/* */
	char db_ip[32];
	int db_port;
	char db_id[32];
	char db_pw[100];
	char db_name[32];
	Sql* mysql_handle;
	/* */
	void (*zeny) (struct map_session_data* sd,char * type, struct map_session_data* src_sd, int amount);
	void (*npc) (struct map_session_data* sd, const char *message);
	void (*chat) (e_log_chat_type type, int type_id, int src_charid, int src_accid, const char *mapname, int x, int y, const char* dst_charname, const char* message);
	void (*atcommand) (struct map_session_data* sd, const char* message);
	void (*branch) (struct map_session_data* sd);

	void (*zeny_sub) (struct map_session_data* sd, char * type, struct map_session_data* src_sd, int amount);
	void (*npc_sub) (struct map_session_data* sd, const char *message);
	void (*chat_sub) (e_log_chat_type type, int type_id, int src_charid, int src_accid, const char *mapname, int x, int y, const char* dst_charname, const char* message);
	void (*atcommand_sub) (struct map_session_data* sd, const char* message);
	void (*branch_sub) (struct map_session_data* sd);

	void (*config_read) (void);

	void (*sql_init) (void);
	void (*sql_final) (void);

	char (*chattype2char) (e_log_chat_type type);
	bool (*should_log_item) (int nameid, int amount, int refine, struct item_data *id);

	//BrAthena Log System
	//Cash Log
	void (*cash_buy_sql) (struct map_session_data* sd,char * type, char * npc_name,struct item* itm , int amount,int price);
	void (*cash_buy_sub_sql) (struct map_session_data* sd,char * type, char * npc_name,struct item* itm , int amount,int price);

	//Card Log
	void (*card) ( struct map_session_data* sd,int slot,char * type, struct item* itm);
	void (*card_sub_sql) ( struct map_session_data* sd,int slot,char * type, struct item* itm);
	
	//Trade Log
	void (*trade) (int zeny, struct map_session_data* sd1, struct map_session_data* sd2,struct item *itm,int amount);
	void (*trade_sub_sql) (int zeny, struct map_session_data* sd1, struct map_session_data* sd2,struct item *itm,int amount);

	//Vending Purchase Log
	void (*vending) (struct map_session_data* sd,struct map_session_data* vsd,struct item *itm, int zeny,int amount);
	void (*vending_sub_sql) (struct map_session_data* sd,struct map_session_data* vsd,struct item *itm, int zeny,int amount);

	//NPC Shop Buy/Sell Log
	void (*npc_shop) (struct map_session_data* sd,char * name, struct item* itm , int unit_cost, int amount, int type);
	void (*npc_shop_sub_sql) (struct map_session_data* sd,char * name, struct item* itm , int unit_cost, int amount, int type);
	
	//Player/Mob Pick/Drop Action Log
	void (*pickdrop) (struct map_session_data *sd, struct mob_data *md, struct item *itm, int amount, char *type, char *from);
	void (*pickdrop_sub_sql) (struct map_session_data *sd, struct mob_data *md, struct item *itm, int amount, char *type, char *from);
	
	//Script Item Add/Remove Log
	void (*script_item) (struct map_session_data* sd, char * name,int amount,char type );
	void (*script_item_sub_sql) (struct map_session_data* sd, char * name,int amount,char type );
	
	//Item Consume Log
	void (*consume)  (struct map_session_data* sd,struct item* itm, int amount,char * type);
	void (*consume_sub_sql)  (struct map_session_data* sd,struct item* itm, int amount, char * type);
	
	//Item Produce Log
	void (*produce)  (struct map_session_data* sd,struct item* itm, int amount,char * type);
	void (*produce_sub_sql)  (struct map_session_data* sd,struct item* itm, int amount, char * type);
	
	//Storage Log
	void (*storage)  (struct map_session_data* sd,struct item* itm,int amount,char type);
	void (*storage_sub_sql) (struct map_session_data* sd,struct item* itm,int amount,char type);
	
	//Guild Storage Log
	void (*gstorage)  (struct map_session_data* sd,struct item* itm,int amount,char type);
	void (*gstorage_sub_sql) (struct map_session_data* sd,struct item* itm,int amount,char type);

	//Mail Log
	void (*mail) (struct mail_message *msg);
	void (*mail_sub_sql) (struct mail_message *msg);
	
	//BuyingStore Log
	void (*buyingstore) (struct map_session_data* bsd,struct map_session_data* vsd,struct item *itm, int zeny,int amount);
	void (*buyingstore_sub_sql) (struct map_session_data* bsd,struct map_session_data* vsd,struct item *itm, int zeny,int amount);
	
	void (*item_getrem)  (int tp,struct map_session_data* sd,struct item* itm,int amount,char * type);
	void (*item_getrem_sub_sql)  (int tp,struct map_session_data* sd,struct item* itm,int amount,char * type);
};

struct log_interface *logs;

#ifdef BRATHENA_CORE
void log_defaults(void);
#endif // BRATHENA_CORE

#endif /* MAP_LOG_H */
