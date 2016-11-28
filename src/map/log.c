/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/map/log.c                                                              *
* Funções referentes aos logs do emulador                                    *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licença GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#define BRATHENA_CORE

#include "log.h"

#include "map/battle.h"
#include "map/itemdb.h"
#include "map/map.h"
#include "map/mob.h"
#include "map/pc.h"
#include "common/cbasetypes.h"
#include "common/nullpo.h"
#include "common/showmsg.h"
#include "common/sql.h" // SQL_INNODB
#include "common/strlib.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct log_interface log_s;
struct log_interface *logs;

// Verifica se o log para certo item está ativo
bool should_log_item(int nameid, int amount, int refine, struct item_data *id) {

	if( id == NULL )
		return false;

	if( ( logs->config.item_type[0] && id->type == IT_HEALING ) ||
		( logs->config.item_type[1] && ( id->type == IT_ETC || id->type == IT_AMMO ) ) ||
		( logs->config.item_type[2] && ( id->type == IT_USABLE || id->type == IT_CASH ) ) ||
		( logs->config.item_type[3] && id->type == IT_WEAPON ) ||
		( logs->config.item_type[4] && id->type == IT_ARMOR ) ||
		( logs->config.item_type[5] && id->type == IT_CARD ) ||
		( logs->config.item_type[6] && ( id->type == IT_PETEGG || id->type == IT_PETARMOR ) ) ||
		( id->value_buy >= logs->config.item_type2[0] ) ||
		( abs(amount) >= logs->config.item_type2[1] ) ||
		( refine >= logs->config.item_type2[2] ) ||
		( ( ( id->maxchance != -1 && id->maxchance <= logs->config.item_type2[3] ) || id->nameid == ITEMID_EMPERIUM ) )
	)
		return true;

	return false;
}

// Verifica se o log de chat está ativo
bool should_log_chat(e_log_chat_type type) {
	
	if	( logs->config.log_chat2[5] && (map->agit_flag || map->agit2_flag) )
			return false;	
		
	if(	( logs->config.log_chat2[0] && type == LOG_CHAT_GLOBAL ) ||
		( logs->config.log_chat2[1] && type == LOG_CHAT_WHISPER ) ||
		( logs->config.log_chat2[2] && type == LOG_CHAT_PARTY ) ||
		( logs->config.log_chat2[3] && type == LOG_CHAT_GUILD ) ||
		( logs->config.log_chat2[4] && type == LOG_CHAT_MAINCHAT )
	) return true;
	
	return false;	
}

// Log de Galho Seco
void log_branch(struct map_session_data *sd) {
	nullpo_retv(sd);

	if (logs->config.branch) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s`\
			(`branch_date`,`account_id`,`char_id`,`char_name`,`map`) VALUES (NOW(),'%d','%d',?,'%s')", logs->config.table_name[1], sd->status.account_id, sd->status.char_id, mapindex_id2name(sd->mapindex))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, sd->status.name, safestrnlen(sd->status.name, NAME_LENGTH))
			// O Campo referênciado é para `char_name` e não userid, divergência de informações.
			// Das duas uma. 1. Campo do banco incorreto. 2. Variavel incorreta.
			// -> Acredito que o mais correto é o campo do banco de dados, mas deixar comentado caso isso volte algum dia. [CarlosHenrq, 2016-10-27]
			// || SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, sd->status.userid, safestrnlen(sd->status.userid, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Log Cashshop [GreenStage]
void log_cash_buy_sql(struct map_session_data *sd, char *type, char *npc_name, struct item *itm, int amount, int price) {
	nullpo_retv(sd);

	if (logs->config.buycash) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);
		struct item_data *i_data;
		int tcost = price *amount;

		if ((i_data = itemdb->exists(itm->nameid)) == NULL)
			return;

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s` (`Date`,`Mapname`,`AccountID`,`CharacterID`,`CharacterIPaddr`,`Type`,`PosX`,`PosY`,`NpcName`,\
			`ItemID`,`ItemName`,`ItemCount`,`ItemSerial`,`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`,`Cash_Price`,`Cash_View`,`Cash_Before`,`Cash_After`)\
			VALUES (NOW(),'%s','%d','%d','%s','%s','%d','%d',?,'%d',?,'%d','%"PRIu64"','%d','%d','%d','%d','%d','%d','%d','%d','%d')",
			logs->config.table_name[4], mapindex_id2name(sd->mapindex), sd->status.account_id, sd->status.char_id, sd->status.last_ip, type, sd->bl.x, sd->bl.y,
			itm->nameid, amount, itm->unique_id, itm->card[0], itm->card[1], itm->card[2], itm->card[3], itm->refine,
			price, tcost, sd->cashPoints + tcost, sd->cashPoints)
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, npc_name, safestrnlen(npc_name, NPC_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, i_data->name, safestrnlen(i_data->name, ITEM_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Log de Cartas [GreenStage]
void log_card(struct map_session_data *sd, int slot, char *type, struct item *itm) {
	nullpo_retv(sd);

	if (logs->config.log_cards) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);
		struct item_data *data = itemdb->exists(itm->nameid);
		struct item_data *cd_data = itemdb->exists(itm->card[slot]);

		if (!logs->should_log_item(itm->nameid, 1, itm->refine, data) && !logs->should_log_item(itm->card[slot], 1, 0, cd_data))
			return;

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s` (`Date`,`Mapname`,`PosX`,`PosY`,`AccountID`,`CharacterID`,`CharName`,`CharacterIPaddr`,`ItemID`,\
			`ItemName`,`ItemSerial`,`Type`,`Slot`,`Card_ID`,`CardName`,`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)\
			VALUES (NOW(),'%s','%d','%d','%d','%d',?,'%s','%d',?,'%"PRIu64"','%s','%d','%d',?,'%d','%d','%d','%d','%d')",
			logs->config.table_name[3], mapindex_id2name(sd->mapindex), sd->bl.x, sd->bl.y, sd->status.account_id, sd->status.char_id, sd->status.last_ip, itm->nameid,
			itm->unique_id, type, slot, itm->card[slot], itm->card[0], itm->card[1], itm->card[2], itm->card[3], itm->refine)
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, sd->status.name, strnlen(sd->status.name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, data->name, safestrnlen(data->name, ITEM_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 2, SQLDT_STRING, cd_data->name, safestrnlen(cd_data->name, ITEM_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Log de Trade [GreenStage]
void log_trade(int zeny, struct map_session_data *sd1, struct map_session_data *sd2, struct item *itm, int amount) {
	nullpo_retv(sd1);
	nullpo_retv(sd2);

	if (logs->config.log_trade) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);
		struct item_data *idata = (itm) ? itemdb->search(itm->nameid) : NULL;

		if(itm && !logs->should_log_item(itm->nameid, amount, itm->refine, idata))
			return;

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s`\
			(`Date`,`Mapname`,`P1_CharID`,`P1_Name`,`P1_PosX`,`P1_PosY`,`P1_IP`,`P2_CharID`,`P2_Name`,`P2_PosX`,`P2_PosY`,`P2_IP`,`Zeny`,`ItemID`,`ItemCount`,`ItemName`,`ItemSerial`,\
			`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`) \
			VALUES (NOW(),'%s','%d',?,'%d','%d','%s','%d',?,'%d','%d','%s','%d','%d','%d',?,'%"PRIu64"','%d','%d','%d','%d','%d')",
			logs->config.table_name[16], mapindex_id2name(sd1->mapindex), sd1->status.char_id, sd1->bl.x, sd1->bl.y, sd1->status.last_ip,
			sd2->status.char_id, sd2->bl.x, sd2->bl.y, sd1->status.last_ip,
			zeny, (itm) ? itm->nameid : 0, amount, (itm) ? itm->unique_id : 0,
			(itm) ? itm->card[0] : 0, (itm) ? itm->card[1] : 0, (itm) ? itm->card[2] : 0, (itm) ? itm->card[3] : 0, (itm) ? itm->refine : 0)
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, sd1->status.name, strnlen(sd1->status.name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, sd2->status.name, strnlen(sd2->status.name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 2, SQLDT_STRING, (itm) ? idata->jname : "", safestrnlen((itm) ? idata->jname : "", ITEM_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Logs de Venda [GreenStage]
void log_vending(struct map_session_data *sd, struct map_session_data *vsd, struct item *itm, int zeny, int amount) {
	nullpo_retv(sd);
	nullpo_retv(vsd);
	nullpo_retv(itm);

	if (logs->config.log_vending) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);
		struct item_data *idata = itemdb->search(itm->nameid);
		nullpo_retv(idata);	

		if (!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
			return;

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s`\
			(`Date`,`Mapname`,`Shop_Name`,`Buyer_CharID`,`Buyer_Name`,`Buyer_IP`,`Vendor_CharID`,`Vendor_Name`,`Vendor_PosX`,`Vendor_PosY`,`Vendor_IP`,\
			`ItemID`,`ItemName`,`Amount`,`Unit_Cost`,`Total_Cost`,`ItemSerial`,`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)\
			VALUES (NOW(),'%s',?,'%d',?,'%s','%d',?,'%d','%d','%s','%d',?,'%d','%d','%d','%"PRIu64"','%d','%d','%d','%d','%d')",
			logs->config.table_name[17], mapindex_id2name(sd->mapindex), sd->status.char_id, sd->status.last_ip,
			vsd->status.char_id, vsd->bl.x, vsd->bl.y, (vsd->state.autotrade) ? "autotrade" : vsd->status.last_ip,
			itm->nameid, amount, zeny, (zeny * amount), itm->unique_id,
			itm->card[0], itm->card[1], itm->card[2], itm->card[3], itm->refine)
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, vsd->message, safestrnlen(vsd->message, MESSAGE_SIZE))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, sd->status.name, strnlen(sd->status.name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 2, SQLDT_STRING, vsd->status.name, strnlen(vsd->status.name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 3, SQLDT_STRING, idata->jname, safestrnlen(idata->jname, ITEM_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Log de venda e compra por NPC [GreenStage]
void log_npc_shop(struct map_session_data *sd, char *name, struct item *itm, int unit_cost, int amount, int type) {
	nullpo_retv(sd);
	nullpo_retv(itm);

	if (logs->config.log_npc_buy_sell) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);
		char action[16];
		struct item_data *idata = itemdb->exists(itm->nameid);
		nullpo_retv(idata);

		if (!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
			return;

		switch (type) {
			case LOG_ACTION_GET:
				strcpy(action,"Compra");
				break;
			case LOG_ACTION_DROP:
				strcpy(action,"Venda");
				break;		
			default:
				strcpy(action,"Desconhecido");
				break;
		}

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s`\
			(`Date`,`Mapname`,`NPC_Name`,`Player_CharID`,`Player_Name`,`Player_IP`,`Player_PosX`,`Player_PosY`,`Player_Action`,`ItemID`,`ItemName`,`Amount`,`Unit_Cost`,`Total_Cost`,`ItemSerial`,`Slots`,`ItemRefiningLevel`)\
			VALUES (NOW(),'%s',?,'%d',?,'%s','%d','%d','%s','%d',?,'%d','%d','%d','%"PRIu64"','%d','%d')",
			logs->config.table_name[13], mapindex_id2name(sd->mapindex), sd->status.char_id, sd->status.last_ip, sd->bl.x, sd->bl.y, action,
			itm->nameid, amount, unit_cost, (amount * unit_cost), itm->unique_id,
			idata->slot, itm->refine)
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, name, safestrnlen(name, NPC_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, sd->status.name, strnlen(sd->status.name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 2, SQLDT_STRING, idata->jname, safestrnlen(idata->jname, ITEM_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Log de coleta e drop [GreenStage]
void log_pickdrop(struct map_session_data *sd, struct mob_data *md, struct item *itm, int amount, char *type, char *from) {
	nullpo_retv(itm);

	if ((sd && logs->config.log_pc_pick_drop) || (md && logs->config.log_mob_pick_drop)) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);
		struct item_data *idata = itemdb->exists(itm->nameid);
		struct block_list *src;

		if (!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
			return;

		src = (sd) ? &sd->bl : &md->bl;

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s`\
			(`Date`,`Action`,`Mapname`,`PosX`,`PosY`,`Subject`,`Name`,`AccountID`,`CharID`,`IP`,`Source`,\
			`ItemID`,`ItemName`,`Amount`,`ItemSerial`,\
			`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)\
			VALUES (NOW(),'%s','%s','%d','%d','%s',?,'%d','%d','%s','%s',\
			'%d',?,'%d','%"PRIu64"','%d','%d','%d','%d','%d')",
			logs->config.table_name[14], type, map->list[src->m].name, src->x, src->y, from, (sd) ? sd->status.account_id : 0,
			(sd) ? sd->status.char_id : 0, (sd) ? sd->status.last_ip : "", (sd) ? "Player" : "Monster",
			itm->nameid, amount, itm->unique_id,
			itm->card[0], itm->card[1], itm->card[2], itm->card[3], itm->refine)
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, (sd) ? sd->status.name : md->name, safestrnlen((sd) ? sd->status.name : md->name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, idata->jname, safestrnlen(idata->jname, ITEM_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Log de Consumíveis [GreenStage]
void log_consume(struct map_session_data *sd, struct item *itm, int amount, char *type) {
	nullpo_retv(itm);
	nullpo_retv(sd);

	if (logs->config.log_consume) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);
		char type_inf[20];
		struct item_data *idata = itemdb->exists(itm->nameid);

		if (!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
			return;

		safestrncpy(type_inf, type, 20);

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s`\
			(`Date`,`Mapname`,`PosX`,`PosY`,`CharacterID`,`CharName`,\
			`CharacterIPaddr`,`ItemID`,`ItemName`,`ItemSerial`,`Amount`,`Type_`)\
			VALUES (NOW(),'%s','%d','%d','%d',?,\
			'%s','%d',?,'%"PRIu64"','%d','%s')",
			logs->config.table_name[7], mapindex_id2name(sd->mapindex), sd->bl.x, sd->bl.y, sd->status.char_id,
			sd->status.last_ip, itm->nameid, itm->unique_id, amount, type_inf)
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, sd->status.name, strnlen(sd->status.name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, idata->jname, safestrnlen(idata->jname, ITEM_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Log de produção [GreenStage]
void log_produce(struct map_session_data *sd, struct item *itm, int amount, char *type) {
	nullpo_retv(sd);

	if (logs->config.log_produce) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);
		struct item_data *idata = itemdb->exists(itm->nameid);
		char type_inf[20];

		safestrncpy(type_inf, type, 20);

		if (!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
			return;

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s`\
			(`Date`,`Mapname`,`PosX`,`PosY`,`CharacterID`,`CharName`,\
			`CharacterIPaddr`,`ItemID`,`ItemName`,`ItemSerial`,`Amount`,`Type_`)\
			VALUES (NOW(),'%s','%d','%d','%d',?,\
			'%s','%d',?,'%"PRIu64"','%d','%s')",
			logs->config.table_name[8], mapindex_id2name(sd->mapindex), sd->bl.x, sd->bl.y, sd->status.char_id,
			sd->status.last_ip, itm->nameid, itm->unique_id, amount, type_inf)
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, sd->status.name, strnlen(sd->status.name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, idata->jname, safestrnlen(idata->jname, ITEM_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Log de Armazém [GreenStage]
void log_storage(struct map_session_data *sd, struct item *itm, int amount, char type) {
	nullpo_retv(sd);
	nullpo_retv(itm);

	if (logs->config.log_storage) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);
		struct item_data *idata = itemdb->search(itm->nameid);	
	
		if (!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
			return;

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s`\
			(`Date`,`Type_`,`Mapname`,`PosX`,`PosY`,`AccountID`,`CharacterID`,`CharName`,\
			`CharacterIPaddr`,`ItemID`,`ItemName`,`ItemSerial`,`Amount`,`ItemSlot1`,\
			`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)\
			VALUES (NOW(),'%c','%s','%d','%d','%d','%d',?,\
			'%s','%d',?,'%"PRIu64"','%d','%d','%d','%d','%d','%d')",
			logs->config.table_name[15], type, mapindex_id2name(sd->mapindex), sd->bl.x, sd->bl.y, sd->status.account_id,
			sd->status.char_id, sd->status.last_ip,
			itm->nameid, itm->unique_id, amount, itm->card[0], itm->card[1],
			itm->card[2], itm->card[3], itm->refine)
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, sd->status.name, strnlen(sd->status.name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, idata->jname, safestrnlen(idata->jname, ITEM_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Log de Armazém para Clãs [GreenStage]
void log_gstorage(struct map_session_data *sd, struct item *itm, int amount, char type) {
	nullpo_retv(sd);
	nullpo_retv(itm);

	if (logs->config.log_gstorage) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);
		struct item_data *idata = itemdb->search(itm->nameid);

		if (!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
			return;

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s`\
			(`Date`,`Type_`,`Mapname`,`PosX`,`PosY`,`GuildID`,`GuildName`,`AccountID`,`CharacterID`,`CharName`,\
			`CharacterIPaddr`,`ItemID`,`ItemName`,`ItemSerial`,`Amount`,`ItemSlot1`,\
			`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)\
			VALUES (NOW(),'%c','%s','%d','%d','%d',?,'%d','%d',?,\
			'%s','%d',?,'%"PRIu64"','%d','%d','%d','%d','%d','%d')",
			logs->config.table_name[6], type, mapindex_id2name(sd->mapindex), sd->bl.x, sd->bl.y, sd->guild->guild_id, sd->status.account_id,
			sd->status.char_id, sd->status.last_ip, itm->nameid, itm->unique_id, amount, itm->card[0], itm->card[1],
			itm->card[2], itm->card[3], itm->refine)
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, sd->guild->name, strnlen(sd->guild->name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, sd->status.name, strnlen(sd->status.name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 2, SQLDT_STRING, idata->jname, safestrnlen(idata->jname, ITEM_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Log do Sistema de Correio [GreenStage]
void log_mail(struct mail_message *msg) {
	nullpo_retv(msg);

	if (logs->config.log_mail) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);
		struct item *itm = &msg->item;
		struct item_data *idata = (itm) ? itemdb->search(itm->nameid) : NULL;

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s`\
			(`Date`,`SenderID`,`SenderName`,`DestID`,`DestName`,`Zeny`,\
			`ItemID`,`ItemName`,`ItemSerial`,`Amount`,`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)\
			VALUES (NOW(),'%d',?,'%d',?,'%d','%d',?,\
			'%"PRIu64"','%d','%d','%d','%d','%d','%d')",
			logs->config.table_name[11], msg->send_id, msg->dest_id, msg->zeny,
			(itm) ? itm->nameid : 0, (itm) ? itm->unique_id : 0, (itm) ? itm->amount : 0,
			(itm) ? itm->card[0] : 0, (itm) ? itm->card[1] : 0,
			(itm) ? itm->card[2] : 0, (itm) ? itm->card[3] : 0,
			(itm) ? itm->refine : 0)
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, msg->send_name, safestrnlen(msg->send_name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, msg->dest_name, safestrnlen(msg->dest_name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 2, SQLDT_STRING, (itm) ? idata->jname : "", safestrnlen((itm) ? idata->jname : "", ITEM_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Log Buyingstore [GreenStage]
void log_buyingstore(struct map_session_data *bsd, struct map_session_data *vsd, struct item *itm, int zeny, int amount) {
	nullpo_retv(bsd);
	nullpo_retv(vsd);
	nullpo_retv(itm);

	if (logs->config.log_buyingstore) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);
		struct item_data *idata = itemdb->search(itm->nameid);

		if (!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
			return;

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s`\
			(`Date`, `Mapname`,`Shop_Name`,\
			`Buyer_CharID`,`Buyer_Name`,`Buyer_IP`,`Buyer_PosX`,`Buyer_PosY`,\
			`Vendor_CharID`,`Vendor_Name`,`Vendor_IP`,\
			`ItemID`,`ItemName`,`Amount`,`Unit_Cost`,`Total_Cost`,`ItemSerial`,`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)\
			VALUES (NOW(),'%s',?,'%d',?,'%s','%d','%d','%d','%s','%s','%d',?,'%d','%d','%d','%"PRIu64"','%d','%d','%d','%d','%d')",
			logs->config.table_name[2], mapindex_id2name(vsd->mapindex), bsd->status.char_id, bsd->status.last_ip, bsd->bl.x, bsd->bl.y,
			vsd->status.char_id, strlib->jstrescape(vsd->status.name), vsd->status.last_ip,
			itm->nameid, amount, zeny, (zeny * amount), itm->unique_id,
			itm->card[0], itm->card[1], itm->card[2], itm->card[3], itm->refine)
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, bsd->message, safestrnlen(bsd->message, MESSAGE_SIZE))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, bsd->status.name, strnlen(bsd->status.name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 2, SQLDT_STRING, idata->name, safestrnlen(idata->name, ITEM_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Log de item get/del [GreenStage]
void log_item_getrem(int tp, struct map_session_data *sd, struct item *itm, int amount, char *type) {
	nullpo_retv(sd);
	nullpo_retv(itm);

	if (logs->config.log_get_remove_item) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);
		struct item_data *idata = itemdb->search(itm->nameid);

		if (!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
			return;

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s`\
			(`Date`,`Type_`,`Source`,`Mapname`,`PosX`,`PosY`,`AccountID`,`CharID`,`CharName`,`CharIP`,\
			`ItemID`,`ItemName`,`Amount`,`ItemSerial`,`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)\
			VALUES (NOW(),'%s','%s','%s','%d','%d','%d','%d',?,'%s',\
			'%d',?,'%d','%"PRIu64"','%d','%d','%d','%d','%d')",
			logs->config.table_name[9], (tp) ? "Get" : "Del", type, mapindex_id2name(sd->mapindex), sd->bl.x, sd->bl.y,
			sd->status.account_id, sd->status.char_id, sd->status.last_ip, itm->nameid,
			amount, itm->unique_id, itm->card[0], itm->card[1], itm->card[2], itm->card[3], itm->refine)
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, sd->status.name, strnlen(sd->status.name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, idata->jname, safestrnlen(idata->jname, ITEM_NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Log de Zeny
void log_zeny(struct map_session_data *sd, char *type, struct map_session_data *src_sd, int amount) {
	nullpo_retv(sd);

	if (logs->config.zeny == 1 || (logs->config.zeny > 1 && abs(amount) >= logs->config.zeny)) {
		if (SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `%s` (`time`,`char_id`,`src_id`,`type`,`amount`,`map`) VALUES (NOW(),'%d','%d','%s','%d','%s')",
			logs->config.table_name[18], sd->status.char_id, src_sd->status.char_id, type, amount, mapindex_id2name(sd->mapindex))
		) {
			Sql_ShowDebug(logs->mysql_handle);
			return;
		}
	}
}

// Log de Comandos
void log_atcommand(struct map_session_data *sd, const char *message) {
	nullpo_retv(sd);
	nullpo_retv(message);

	if (logs->config.commands || pc->should_log_commands(sd)) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s`\
			(`atcommand_date`,`account_id`,`char_id`,`char_name`,`map`,`command`)\
			VALUES (NOW(),'%d','%d',?,'%s',?)",
			logs->config.table_name[0], sd->status.account_id, sd->status.char_id, mapindex_id2name(sd->mapindex))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, sd->status.name, strnlen(sd->status.name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, (char *)message, safestrnlen(message, CHAT_SIZE_MAX))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Log de Mensagens de NPCs
void log_npc(struct map_session_data *sd, const char *message) {
	nullpo_retv(sd);

	if (logs->config.npc) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s` (`npc_date`,`account_id`,`char_id`,`char_name`,`map`,`mes`) VALUES (NOW(),'%d','%d',?,'%s',?)",
			logs->config.table_name[12], sd->status.account_id, sd->status.char_id, mapindex_id2name(sd->mapindex))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, sd->status.name, strnlen(sd->status.name, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, (char *)message, safestrnlen(message, CHAT_SIZE_MAX))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Log de Mensagens
void log_chat(e_log_chat_type type, int type_id, int src_charid, int src_accid, const char *mapname, int x, int y, const char *dst_charname, const char *message) {
	nullpo_retv(message);

	if(dst_charname)
		nullpo_retv(dst_charname);

	if (should_log_chat(type)) {
		struct SqlStmt *stmt = SQL->StmtMalloc(logs->mysql_handle);
		char log_type=false;

		switch (type) {
			case LOG_CHAT_GLOBAL:   log_type = 'O';  break;	// Gl(O)bal
			case LOG_CHAT_WHISPER:  log_type = 'W';  break;	// (W)hisper
			case LOG_CHAT_PARTY:    log_type = 'P';  break;	// (P)arty
			case LOG_CHAT_GUILD:    log_type = 'G';  break;	// (G)uild
			case LOG_CHAT_MAINCHAT: log_type = 'M';  break;	// (M)ain chat
		}

		if (SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s`\
			(`time`,`type`,`type_id`,`src_charid`,`src_accountid`,`src_map`,`src_map_x`,\
			`src_map_y`,`dst_charname`,`message`) VALUES\
			(NOW(),'%c','%d','%d','%d','%s','%d','%d',?,?)", 
			logs->config.table_name[5], log_type, type_id, src_charid, src_accid, mapname, x, y)
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, (char *)dst_charname, safestrnlen(dst_charname, NAME_LENGTH))
			|| SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, (char *)message, safestrnlen(message, CHAT_SIZE_MAX))
			|| SQL_SUCCESS != SQL->StmtExecute(stmt)
		) {
			SqlStmt_ShowDebug(stmt);
			SQL->StmtFree(stmt);
			return;
		}
		SQL->StmtFree(stmt);
	}
}

// Inicializa a database de Log
void log_sql_init(void) {
	logs->mysql_handle = SQL->Malloc();

	ShowInfo(""CL_WHITE"[SQL]"CL_RESET": Conectando com a database de Log "CL_WHITE"%s"CL_RESET" em "CL_WHITE"%s"CL_RESET"...\n",logs->db_name,logs->db_ip);
	if ( SQL_ERROR == SQL->Connect(logs->mysql_handle, logs->db_id, logs->db_pw, logs->db_ip, logs->db_port, logs->db_name) )
		exit(EXIT_FAILURE);
	ShowStatus(""CL_WHITE"[SQL]"CL_RESET": Conectado com '"CL_GREEN"sucesso"CL_RESET"' na database '"CL_WHITE"%s"CL_RESET"'.\n", logs->db_name);

	if (map->default_codepage[0] != '\0')
		if ( SQL_ERROR == SQL->SetEncoding(logs->mysql_handle, map->default_codepage) )
			Sql_ShowDebug(logs->mysql_handle);
}

// Finaliza a database de Log
void log_sql_final(void) {
	ShowStatus("Fechando a conexão com a database de Log....\n");
	SQL->Free(logs->mysql_handle);
	logs->mysql_handle = NULL;
}

// Leitura das opções em conf/logs.conf [Shiraz]
// http://www.hyperrealm.com/libconfig/libconfig_manual.html#The-C-API
void log_config_read(void) {
	config_setting_t *logs_perm, *items_perm, *chat_log, *tables;
	config_t config;
	int val;

	// Leitura do arquivo de configuração
	if (libconfig->read_file(&config, "conf/logs.conf"))
		return;

	// Reseta valores da memória
	memset(&logs->config, 0, sizeof(logs->config));

	// Verifica se o sistema de LOGS esta ativo.
    libconfig->lookup_bool(&config, "enable_logs", &val);
	if (val)
	{
		// Inicializa a leitura das opções conforme libconfig
		logs_perm = libconfig->lookup(&config, "logs_perm");
		if (logs_perm != NULL) {
			if (libconfig->setting_lookup_bool(logs_perm, "log_cards", &val))
				logs->config.log_cards = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_buyingstore", &val))
				logs->config.log_buyingstore = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_vending", &val))
				logs->config.log_vending = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_consume", &val))
				logs->config.log_consume = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_mob_pick_drop", &val))
				logs->config.log_mob_pick_drop = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_pc_pick_drop", &val))
				logs->config.log_pc_pick_drop = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_npc_buy_sell", &val))
				logs->config.log_npc_buy_sell = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_storage", &val))
				logs->config.log_storage = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_gstorage", &val))
				logs->config.log_gstorage = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_get_remove_item", &val))
				logs->config.log_get_remove_item = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_mail", &val))
				logs->config.log_mail = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_trade", &val))
				logs->config.log_trade = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_produce", &val))
				logs->config.log_produce = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_branch", &val))
				logs->config.branch = val;
			if (libconfig->setting_lookup_int(logs_perm, "log_zeny", &val))
				logs->config.zeny = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_mvpdrop", &val))
				logs->config.mvpdrop = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_commands", &val))
				logs->config.commands = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_npc", &val))
				logs->config.npc = val;
			if (libconfig->setting_lookup_bool(logs_perm, "log_buycash", &val))
				logs->config.buycash = val;
		}

		items_perm = libconfig->lookup(&config, "items_perm");
		if (items_perm != NULL) {
			if (libconfig->setting_lookup_bool(items_perm, "log_type_item_heal", &val))
				logs->config.item_type[0] = val;
			if (libconfig->setting_lookup_bool(items_perm, "log_type_item_etc", &val))
				logs->config.item_type[1] = val;
			if (libconfig->setting_lookup_bool(items_perm, "log_type_item_usable", &val))
				logs->config.item_type[2] = val;
			if (libconfig->setting_lookup_bool(items_perm, "log_type_item_weapon", &val))
				logs->config.item_type[3] = val;
			if (libconfig->setting_lookup_bool(items_perm, "log_type_item_armor", &val))
				logs->config.item_type[4] = val;
			if (libconfig->setting_lookup_bool(items_perm, "log_type_item_cards", &val))
				logs->config.item_type[5] = val;
			if (libconfig->setting_lookup_bool(items_perm, "log_type_item_pet", &val))
				logs->config.item_type[6] = val;
			if (libconfig->setting_lookup_int(items_perm, "log_type_item_price", &val))
				logs->config.item_type2[0] = val;
			if (libconfig->setting_lookup_int(items_perm, "log_type_item_amount", &val))
				logs->config.item_type2[1] = val;
			if (libconfig->setting_lookup_int(items_perm, "log_type_item_refine", &val))
				logs->config.item_type2[2] = val;
			if (libconfig->setting_lookup_int(items_perm, "log_type_item_rare", &val))
				logs->config.item_type2[3] = val;
		}

		chat_log = libconfig->lookup(&config, "log_chat");
		if (chat_log != NULL) {
			if (libconfig->setting_lookup_bool(chat_log, "log_chat_global", &val))
				logs->config.log_chat2[0] = val;
			if (libconfig->setting_lookup_bool(chat_log, "log_chat_pm", &val))
				logs->config.log_chat2[1] = val;
			if (libconfig->setting_lookup_bool(chat_log, "log_chat_party", &val))
				logs->config.log_chat2[2] = val;
			if (libconfig->setting_lookup_bool(chat_log, "log_chat_guild", &val))
				logs->config.log_chat2[3] = val;
			if (libconfig->setting_lookup_bool(chat_log, "log_chat_main", &val))
				logs->config.log_chat2[4] = val;
			if (libconfig->setting_lookup_bool(chat_log, "log_chat_in_woe", &val))
				logs->config.log_chat2[5] = val;
		}
	}

	tables = libconfig->lookup(&config, "log_tables");
	for (val = 0; val < config_setting_length(tables); val++)
		safestrncpy(logs->config.table_name[val], libconfig->setting_get_string_elem(tables, val), ARRAYLENGTH(logs->config.table_name));

	// Remove da memória
	libconfig->destroy(&config);
}

void log_defaults(void) {
	logs = &log_s;

	sprintf(logs->db_ip,"127.0.0.1");
	sprintf(logs->db_id,"ragnarok");
	sprintf(logs->db_pw,"ragnarok");
	sprintf(logs->db_name,"log");

	logs->db_port = 3306;
	logs->mysql_handle = NULL;

	logs->config_read = log_config_read;
	logs->sql_init = log_sql_init;
	logs->sql_final = log_sql_final;

	logs->zeny = log_zeny;
	logs->npc = log_npc;
	logs->chat = log_chat;
	logs->atcommand = log_atcommand;
	logs->branch = log_branch;
	logs->cash_buy_sql = log_cash_buy_sql;
	logs->card = log_card;
	logs->trade = log_trade;
	logs->vending = log_vending;
	logs->npc_shop = log_npc_shop;
	logs->pickdrop = log_pickdrop;
	logs->consume = log_consume;
	logs->produce = log_produce;
	logs->storage = log_storage;
	logs->gstorage = log_gstorage;
	logs->mail = log_mail;
	logs->buyingstore = log_buyingstore;
	logs->item_getrem = log_item_getrem;
	logs->should_log_item = should_log_item;
}
