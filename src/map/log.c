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

#define BRATHENA_CORE

#include "log.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "battle.h"
#include "itemdb.h"
#include "map.h"
#include "mob.h"
#include "pc.h"
#include "../common/cbasetypes.h"
#include "../common/nullpo.h"
#include "../common/showmsg.h"
#include "../common/sql.h" // SQL_INNODB
#include "../common/strlib.h"

struct log_interface log_s;


/// obtain log type character for chat logs
char log_chattype2char(e_log_chat_type type) {
	switch( type ) {
		case LOG_CHAT_GLOBAL:   return 'O';  // Gl(O)bal
		case LOG_CHAT_WHISPER:  return 'W';  // (W)hisper
		case LOG_CHAT_PARTY:    return 'P';  // (P)arty
		case LOG_CHAT_GUILD:    return 'G';  // (G)uild
		case LOG_CHAT_MAINCHAT: return 'M';  // (M)ain chat
	}

	// should not get here, fallback
	ShowDebug("log_chattype2char: Tipo desconhecido %d.\n", type);
	return 'O';
}


/// check if this item should be logged according the settings
bool should_log_item(int nameid, int amount, int refine, struct item_data *id) {
	int filter = logs->config.filter;

	if( id == NULL )
		return false;

	if( ( filter&LOG_FILTER_ALL ) ||
		( filter&LOG_FILTER_HEALING && id->type == IT_HEALING ) ||
		( filter&LOG_FILTER_ETC_AMMO && ( id->type == IT_ETC || id->type == IT_AMMO ) ) ||
		( filter&LOG_FILTER_USABLE && ( id->type == IT_USABLE || id->type == IT_CASH ) ) ||
		( filter&LOG_FILTER_WEAPON && id->type == IT_WEAPON ) ||
		( filter&LOG_FILTER_ARMOR && id->type == IT_ARMOR ) ||
		( filter&LOG_FILTER_CARD && id->type == IT_CARD ) ||
		( filter&LOG_FILTER_PETITEM && ( id->type == IT_PETEGG || id->type == IT_PETARMOR ) ) ||
		( filter&LOG_FILTER_PRICE && id->value_buy >= logs->config.price_items_log ) ||
		( filter&LOG_FILTER_AMOUNT && abs(amount) >= logs->config.amount_items_log ) ||
		( filter&LOG_FILTER_REFINE && refine >= logs->config.refine_items_log ) ||
		( filter&LOG_FILTER_CHANCE && ( ( id->maxchance != -1 && id->maxchance <= logs->config.rare_items_log ) || id->nameid == ITEMID_EMPERIUM ) )
	)
		return true;

	return false;
}
void log_branch_sub_sql(struct map_session_data* sd) {
	SqlStmt* stmt;
	stmt = SQL->StmtMalloc(logs->mysql_handle);
	if( SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s` (`branch_date`, `account_id`, `char_id`, `char_name`, `map`) VALUES (NOW(), '%d', '%d', ?, '%s')", logs->config.log_branch, sd->status.account_id, sd->status.char_id, mapindex_id2name(sd->mapindex) )
	   ||  SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, sd->status.name, strnlen(sd->status.name, NAME_LENGTH))
	   ||  SQL_SUCCESS != SQL->StmtExecute(stmt) )
	{
		SqlStmt_ShowDebug(stmt);
		SQL->StmtFree(stmt);
		return;
	}
	SQL->StmtFree(stmt);
}

//Cash buying log - [GreenStage/brAthena]
void log_cash_buy_sql (struct map_session_data* sd,char * type,char * npc_name,struct item* itm , int amount,int price){
	nullpo_retv(sd);

	if( !logs->config.buycash )
		return;
	
	logs->cash_buy_sub_sql(sd,type,npc_name,itm,amount,price);	
	return;
}
void log_cash_buy_sub_sql (struct map_session_data* sd,char * type,char * npc_name,struct item* itm , int amount,int price){
	struct item_data *i_data;
	int tcost= price * amount;
	char* sql_data,account_name[23], last_ip[20];
	i_data = itemdb->exists(itm->nameid);
	
	if(i_data == NULL)
		return;
	
	// Time to get Acc Name and Ip Info from login table.
	if( SQL_ERROR == SQL->Query(map->mysql_handle,"SELECT `userid` ,`last_ip` FROM `login`  WHERE `account_id` ='%d'",sd->status.account_id)){
		Sql_ShowDebug(map->mysql_handle);
		return;		
	}
	if( SQL_SUCCESS != SQL->NextRow(map->mysql_handle) )
	{	
        Sql_ShowDebug(map->mysql_handle);
		return;
	}

	SQL->GetData(map->mysql_handle,  0, &sql_data, NULL); 
	safestrncpy(account_name,sql_data,sizeof(account_name));
	SQL->GetData(map->mysql_handle,  1, &sql_data, NULL); 
	safestrncpy(last_ip,sql_data,sizeof(last_ip));
	
	if( SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `CashItemShop` (`Date`, `Mapname`, `AccountID`, `AccountName`,`CharacterID`,`CharacterIPaddr`,`Type`,`PosX`,`PosY`,`NpcName`,`ItemID`,`ItemName`,`ItemCount`,`ItemSerial`,`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`,`Cash_Price`,`Cash_View`,`Cash_Before`,`Cash_After`)"
	"VALUES (NOW(), '%s','%d','%s','%d','%s','%s','%d','%d','%s','%d','%s','%d','%"PRIu64"','%d','%d','%d','%d','%d','%d','%d','%d','%d')",
	mapindex_id2name(sd->mapindex), sd->status.account_id, account_name, sd->status.char_id, last_ip, type, sd->bl.x, sd->bl.y, npc_name, itm->nameid, i_data->name, amount, itm->unique_id, itm->card[0], itm->card[1], itm->card[2], itm->card[3], itm->refine, price, tcost, sd->cashPoints + tcost, sd->cashPoints))
	{
		Sql_ShowDebug(logs->mysql_handle);
		return;
	}

	
}

void log_branch_sub_txt(struct map_session_data* sd) {
	char timestring[255];
	time_t curtime;
	FILE* logfp;
	
	if( ( logfp = fopen(logs->config.log_branch, "a") ) == NULL )
		return;
	time(&curtime);
	strftime(timestring, sizeof(timestring), "%m/%d/%Y %H:%M:%S", localtime(&curtime));
	fprintf(logfp,"%s - %s[%d:%d]\t%s\n", timestring, sd->status.name, sd->status.account_id, sd->status.char_id, mapindex_id2name(sd->mapindex));
	fclose(logfp);
}

/// logs items, that summon monsters
void log_branch(struct map_session_data* sd) {
	nullpo_retv(sd);

	if( !logs->config.branch )
		return;

	logs->branch_sub(sd);
}

// Card Slot Insert/Remove Log - brAthena
void log_card ( struct map_session_data* sd,int slot,char * type, struct item* itm){
	nullpo_retv(sd);

	if( !logs->config.cards )
		return;
	
	logs->card_sub_sql(sd,slot,type,itm);
	return;
}
void log_card_sub_sql( struct map_session_data* sd,int slot,char * type, struct item* itm){
	char last_ip[20];
	struct item_data *data = itemdb->exists(itm->nameid);
	struct item_data *cd_data = itemdb->exists(itm->card[slot]);

	if( !logs->should_log_item(itm->nameid, 1, itm->refine, data) && !logs->should_log_item(itm->card[slot], 1,0,cd_data))
		return; 
	
	pc->get_ip(sd,last_ip);
	
	if( SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `Card_Log` (`Date`, `Mapname`,`PosX`,`PosY`, `AccountID`,`CharacterID`,`CharName`,`CharacterIPaddr`,`ItemID`,`ItemName`,`ItemSerial`,`Type`,`Slot`,`Card_ID`,`CardName`,`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)"
	"VALUES (NOW(), '%s','%d','%d','%d','%d','%s','%s','%d','%s','%"PRIu64"','%s','%d','%d','%s','%d','%d','%d','%d','%d')",
	mapindex_id2name(sd->mapindex), sd->bl.x, sd->bl.y, sd->status.account_id, sd->status.char_id,sd->status.name,last_ip,itm->nameid,
	data->name,itm->unique_id,type,slot, itm->card[slot],cd_data->name, itm->card[0], itm->card[1], itm->card[2], itm->card[3], itm->refine))
	{
		Sql_ShowDebug(logs->mysql_handle);
		return;
	}
}

//Log Trades - BrAthena

void log_trade (int zeny, struct map_session_data* sd1, struct map_session_data* sd2,struct item *itm,int amount){
	nullpo_retv(sd1);
	nullpo_retv(sd2);
	if( !logs->config.trade )
		return;

	logs->trade_sub_sql(zeny,sd1,sd2,itm,amount);
	return;
}
void log_trade_sub_sql(int zeny, struct map_session_data* sd1, struct map_session_data* sd2,struct item *itm,int amount){
	char last_ip1[20], last_ip2[20];
	struct item_data *idata = (itm)? itemdb->search(itm->nameid) : NULL;
	
	if(itm && !logs->should_log_item(itm->nameid, amount, itm->refine, idata))
		return;
	
	pc->get_ip(sd1,last_ip1);
	pc->get_ip(sd2,last_ip2);
	
	if( SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `Trade_Log`"
	"(`Date`, `Mapname`,"
	"`P1_CharID`,`P1_Name`,`P1_PosX`,`P1_PosY`,`P1_IP`,"
	"`P2_CharID`,`P2_Name`,`P2_PosX`,`P2_PosY`,`P2_IP`,"
	"`Zeny`,`ItemID`,`ItemCount`,`ItemName`,`ItemSerial`,`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)"
	"VALUES (NOW(),'%s', '%d','%s','%d','%d','%s',"
					"'%d','%s','%d','%d','%s',"
	"'%d','%d','%d','%s','%"PRIu64"','%d','%d','%d','%d','%d')",
	mapindex_id2name(sd1->mapindex), sd1->status.char_id,sd1->status.name, sd1->bl.x, sd1->bl.y,last_ip1,
	sd2->status.char_id,sd2->status.name, sd2->bl.x, sd2->bl.y,last_ip2,
	zeny,(itm)? itm->nameid : 0,amount,(itm)? idata->name:"",(itm)? itm->unique_id :0,
	(itm)? itm->card[0] : 0,(itm)? itm->card[1] : 0,(itm)? itm->card[2] : 0,(itm)? itm->card[3] : 0,(itm)? itm->refine : 0))
	
	{
		Sql_ShowDebug(logs->mysql_handle);
		return;
	}
	
}
//Vending Logs - BrAthena
void log_vending (struct map_session_data* sd,struct map_session_data* vsd,struct item *itm, int zeny,int amount){
	nullpo_retv(sd);
	nullpo_retv(vsd);
	nullpo_retv(itm);
	if( !logs->config.vending )
		return;

	logs->vending_sub_sql(sd,vsd,itm,zeny,amount);
	return;
}
void log_vending_sub_sql (struct map_session_data* sd,struct map_session_data* vsd,struct item *itm, int zeny,int amount){
	char ip_sd[20], ip_vsd[20]="AutoTrade";
	struct item_data *idata = itemdb->search(itm->nameid);
	nullpo_retv(idata);	
	
	if(!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
		return;	
	
	pc->get_ip(sd,ip_sd);
	if(!vsd->state.autotrade)
		pc->get_ip(vsd,ip_vsd);

	if( SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `Vending_Log`"
	"(`Date`, `Mapname`,`Shop_Name`,"
	"`Buyer_CharID`,`Buyer_Name`,`Buyer_IP`,"
	"`Vendor_CharID`,`Vendor_Name`,`Vendor_PosX`,`Vendor_PosY`,`Vendor_IP`,"
	"`ItemID`,`ItemName`,`Amount`,`Unit_Cost`,`Total_Cost`,`ItemSerial`,`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)"
	"VALUES (NOW(),'%s','%s', '%d','%s','%s',"
					"'%d','%s','%d','%d','%s',"
	"'%d','%s','%d','%d','%d','%"PRIu64"','%d','%d','%d','%d','%d')",
	mapindex_id2name(sd->mapindex),vsd->message, sd->status.char_id,sd->status.name,ip_sd,
	vsd->status.char_id,vsd->status.name, vsd->bl.x, vsd->bl.y,ip_vsd,
	itm->nameid,idata->name,amount,zeny,zeny*amount,itm->unique_id,
	itm->card[0],itm->card[1],itm->card[2],itm->card[3],itm->refine))
	
	{
		Sql_ShowDebug(logs->mysql_handle);
		return;
	}	
}

//NPC Buy/Sell Log - BrAthena
void log_npc_shop (struct map_session_data* sd,char * name, struct item* itm , int unit_cost, int amount, int type){
	nullpo_retv(sd);
	nullpo_retv(itm);
	if( !logs->config.npc_buy_sell )
		return;
	logs->npc_shop_sub_sql(sd,name,itm,unit_cost,amount,type);
	return;
}
void log_npc_shop_sub_sql (struct map_session_data* sd,char * name, struct item* itm , int unit_cost, int amount, int type){
	char ip_sd[20], action[5];
	struct item_data* idata = itemdb->exists(itm->nameid);
	nullpo_retv(idata);
	pc->get_ip(sd,ip_sd);
	
	if(!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
		return;
	
	switch(type){
		case LOG_ACTION_GET:
			strcpy(action,"Buy");
			break;
		case LOG_ACTION_DROP:
			strcpy(action,"Sell");
			break;		
		default:
			strcpy(action,"Unknown");
			break;
	}
	if( SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `NpcShop_Log`"
	"(`Date`, `Mapname`,"
	"`NPC_Name`,`Player_CharID`,`Player_Name`,`Player_IP`,`Player_PosX`,`Player_PosY`,`Player_Action`,"
	"`ItemID`,`ItemName`,`Amount`,`Unit_Cost`,`Total_Cost`,`ItemSerial`,"
	"`Slots`,`ItemRefiningLevel`)"
	"VALUES (NOW(),'%s','%s', '%d','%s','%s','%d','%d','%s',"
	"'%d','%s','%d','%d','%d','%"PRIu64"',"
	"'%d','%d')",
	mapindex_id2name(sd->mapindex),name, sd->status.char_id,sd->status.name,ip_sd,sd->bl.x, sd->bl.y,action,
	itm->nameid,idata->name,amount,unit_cost,amount*unit_cost,itm->unique_id,
	idata->slot,itm->refine))	
	{
		Sql_ShowDebug(logs->mysql_handle);
		return;
	}
	
}
void log_pickdrop (struct map_session_data* sd, struct mob_data *md, struct item* itm ,int amount,char * type,char * from){
	nullpo_retv(itm);
	if( md && !sd && !logs->config.pc_pick_drop )
		return;
		
	if(!sd && !logs->config.mob_pick_drop)
		return;

	logs->pickdrop_sub_sql (sd,md,itm,amount,type,from);
	return;
}
void log_pickdrop_sub_sql (struct map_session_data* sd, struct mob_data *md, struct item* itm ,int amount,char * type,char * from){
	char ip_sd[20] = "",c_source[8],c_from[23]="";
	struct block_list *src;
	struct item_data* idata = itemdb->exists(itm->nameid);

	if(!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
		return;
	
	if(sd){
			pc->get_ip(sd,ip_sd);
			src = &sd->bl;
			strcpy(c_source,"Player");
	}
	else if(md){
			src = &md->bl;
			strcpy(c_source,"Monster");
	}
	else return;
	
	
	if( SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `PickDrop_Log`"
	"(`Date`,`Action`, `Mapname`,`PosX`,`PosY`,"
	"`Subject`,`Source`,`AccountID`,`CharID`,`IP`,`Name`,"
	"`ItemID`,`ItemName`,`Amount`,`ItemSerial`,"
	"`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)"
	"VALUES (NOW(),'%s','%s','%d','%d','%s','%s','%d','%d','%s','%s',"
	"'%d','%s','%d','%"PRIu64"',"
	"'%d','%d','%d','%d','%d')",
	type,map->list[src->m].name,src->x,src->y,from,c_from,(sd)? sd->status.account_id : 0,
	(sd)? sd->status.char_id : 0,ip_sd,(sd)? sd->status.name : md->name,
	itm->nameid,idata->name,amount,itm->unique_id,
	itm->card[0],itm->card[1],itm->card[2],itm->card[3],itm->refine))
	{
		Sql_ShowDebug(logs->mysql_handle);
		return;
	}
}
void log_consume (struct map_session_data* sd,struct item* itm, int amount,char * type){
	nullpo_retv(itm);
	nullpo_retv(sd);
	if( !logs->config.consume )
		return;

	logs->consume_sub_sql (sd,itm,amount,type);
	return;	
}
void log_consume_sub_sql (struct map_session_data* sd,struct item* itm, int amount,char * type){
	char ip_sd[20], type_inf[20];
	struct item_data* idata = itemdb->exists(itm->nameid);

	if(!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
		return;
	
	pc->get_ip(sd,ip_sd);
	safestrncpy(type_inf,type,20);
	if( SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `ItemConsume_Log`"
	"(`Date`, `Mapname`,`PosX`,`PosY`,`CharacterID`,`CharName`,"
	"`CharacterIPaddr`,`ItemID`,`ItemName`,`ItemSerial`,`Amount`,`Type_`)"
	"VALUES (NOW(),'%s','%d', '%d','%d','%s',"
					"'%s','%d','%s','%"PRIu64"','%d','%s')",
	mapindex_id2name(sd->mapindex),sd->bl.x, sd->bl.y,sd->status.char_id,sd->status.name,
	ip_sd,itm->nameid,idata->name,itm->unique_id,amount,type_inf))
	{
		Sql_ShowDebug(logs->mysql_handle);
		return;
	}		
}
void log_produce (struct map_session_data* sd,struct item* itm, int amount,char * type){
	nullpo_retv(sd);
	if( !logs->config.produce )
		return;

	logs->produce_sub_sql (sd,itm,amount,type);
	return;	
}
void log_produce_sub_sql (struct map_session_data* sd,struct item* itm, int amount,char * type){
	char ip_sd[20], type_inf[20];
	pc->get_ip(sd,ip_sd);
	safestrncpy(type_inf,type,20);
	

	if(!itm){
		if( SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `ItemProduce_Log`"
		"(`Date`, `Mapname`,`PosX`,`PosY`,`CharacterID`,`CharName`,"
		"`CharacterIPaddr`,`Type_`)"
		"VALUES (NOW(),'%s','%d', '%d','%d','%s',"
						"'%s','%s')",
		mapindex_id2name(sd->mapindex),sd->bl.x, sd->bl.y,sd->status.char_id,sd->status.name,
		ip_sd,type_inf))
		{
			Sql_ShowDebug(logs->mysql_handle);
			return;
		}		
	}
	else{
		struct item_data* idata = itemdb->exists(itm->nameid);

		if (!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
			return;

		if( SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `ItemProduce_Log`"
		"(`Date`, `Mapname`,`PosX`,`PosY`,`CharacterID`,`CharName`,"
		"`CharacterIPaddr`,`ItemID`,`ItemName`,`ItemSerial`,`Amount`,`Type_`)"
		"VALUES (NOW(),'%s','%d', '%d','%d','%s',"
						"'%s','%d','%s','%"PRIu64"','%d','%s')",
		mapindex_id2name(sd->mapindex),sd->bl.x, sd->bl.y,sd->status.char_id,sd->status.name,
		ip_sd,itm->nameid,idata->name,itm->unique_id,amount,type_inf))
		{
			Sql_ShowDebug(logs->mysql_handle);
			return;
		}
	}
}
void log_storage (struct map_session_data* sd,struct item* itm, int amount,char type){
	nullpo_retv(sd);
	nullpo_retv(itm);
	if( !logs->config.storage )
		return;

	logs->storage_sub_sql(sd,itm,amount,type);
	return;	
}
void log_storage_sub_sql (struct map_session_data* sd,struct item* itm, int amount,char type){
	char ip_sd[20];
	struct item_data *idata = itemdb->search(itm->nameid);	
	
	if(!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
		return;
	
	pc->get_ip(sd,ip_sd);
	if( SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `Storage_Log`"
	"(`Date`,`Type_`,`Mapname`,`PosX`,`PosY`,`AccountID`,`CharacterID`,`CharName`,"
	"`CharacterIPaddr`,`ItemID`,`ItemName`,`ItemSerial`,`Amount`,`ItemSlot1`,"
	"`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)"
	"VALUES (NOW(),'%c','%s', '%d','%d','%d','%d','%s',"
	"'%s','%d','%s','%"PRIu64"','%d','%d','%d','%d','%d','%d')",
	type,mapindex_id2name(sd->mapindex),sd->bl.x, sd->bl.y,sd->status.account_id,
	sd->status.char_id,sd->status.name,ip_sd,
	itm->nameid,idata->name,itm->unique_id,amount,itm->card[0],itm->card[1],
	itm->card[2],itm->card[3],itm->refine))
	{
		Sql_ShowDebug(logs->mysql_handle);
		return;
	}		
	return;	
}
void log_gstorage (struct map_session_data* sd,struct item* itm, int amount,char type){
	nullpo_retv(sd);
	nullpo_retv(itm);
	if( !logs->config.gstorage )
		return;

	logs->gstorage_sub_sql(sd,itm,amount,type);
	return;	
}
void log_gstorage_sub_sql (struct map_session_data* sd,struct item* itm, int amount,char type){
	char ip_sd[20];
	struct item_data *idata = itemdb->search(itm->nameid);

	if(!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
		return;
	
	pc->get_ip(sd,ip_sd);
	if( SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `Guild_Storage_Log`"
	"(`Date`,`Type_`,`Mapname`,`PosX`,`PosY`,`GuildID`,`GuildName`,`AccountID`,`CharacterID`,`CharName`,"
	"`CharacterIPaddr`,`ItemID`,`ItemName`,`ItemSerial`,`Amount`,`ItemSlot1`,"
	"`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)"
	"VALUES (NOW(),'%c','%s', '%d','%d','%d','%s','%d','%d','%s',"
	"'%s','%d','%s','%"PRIu64"','%d','%d','%d','%d','%d','%d')",
	type,mapindex_id2name(sd->mapindex),sd->bl.x, sd->bl.y,	sd->guild->guild_id,
	sd->guild->name,sd->status.account_id,
	sd->status.char_id,sd->status.name,ip_sd,
	itm->nameid,idata->name,itm->unique_id,amount,itm->card[0],itm->card[1],
	itm->card[2],itm->card[3],itm->refine))
	{
		Sql_ShowDebug(logs->mysql_handle);
		return;
	}		
	return;	
}
void log_mail (struct mail_message *msg){
	nullpo_retv(msg);
	if( !logs->config.mail )
		return;
	logs->mail_sub_sql(msg);
	return;	
}
void log_mail_sub_sql (struct mail_message *msg){
	
	struct item * itm = &msg->item;
	struct item_data *idata = (itm) ? itemdb->search(itm->nameid) : NULL;	

	if( SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `Mail_Log`"
	"(`Date`,`SenderID`,`SenderName`,`DestID`,`DestName`,`Zeny`,"
	"`ItemID`,`ItemName`,`ItemSerial`,`Amount`,`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)"
	"VALUES (NOW(),'%d','%s', '%d','%s','%d','%d','%s',"
	"'%"PRIu64"','%d','%d','%d','%d','%d','%d')",
	msg->send_id,msg->send_name,msg->dest_id,msg->dest_name,msg->zeny,
	(itm)? itm->nameid :0,(itm)? idata->name : "",
	(itm)? itm->unique_id : 0, (itm)? itm->amount : 0,
	(itm)? itm->card[0] : 0 ,(itm)? itm->card[1] : 0,
	(itm)? itm->card[2] : 0,(itm)? itm->card[3] : 0,
	(itm)? itm->refine : 0))
	{
		Sql_ShowDebug(logs->mysql_handle);
		return;
	}		
	return;	
}

void log_buyingstore (struct map_session_data* bsd,struct map_session_data* vsd,struct item *itm, int zeny,int amount){
	nullpo_retv(bsd);
	nullpo_retv(vsd);
	nullpo_retv(itm);
	if( !logs->config.buyingstore )
		return;

	logs->buyingstore_sub_sql(bsd,vsd,itm,zeny,amount);
	return;
}
void log_buyingstore_sub_sql (struct map_session_data* bsd,struct map_session_data* vsd,struct item *itm, int zeny,int amount){
	char ip_bsd[20] ="AutoTrade", ip_vsd[20];
	struct item_data *idata = itemdb->search(itm->nameid);

	if(!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
		return;
	
	pc->get_ip(vsd,ip_vsd);
	if(!bsd->state.autotrade)
		pc->get_ip(bsd,ip_bsd);

	if( SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `BuyingStore_Log`"
	"(`Date`, `Mapname`,`Shop_Name`,"
	"`Buyer_CharID`,`Buyer_Name`,`Buyer_IP`,`Buyer_PosX`,`Buyer_PosY`,"
	"`Vendor_CharID`,`Vendor_Name`,`Vendor_IP`,"
	"`ItemID`,`ItemName`,`Amount`,`Unit_Cost`,`Total_Cost`,`ItemSerial`,`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)"
	"VALUES (NOW(),'%s','%s', '%d','%s','%s','%d','%d',"
					"'%d','%s','%s',"
	"'%d','%s','%d','%d','%d','%"PRIu64"','%d','%d','%d','%d','%d')",
	mapindex_id2name(vsd->mapindex),bsd->message,bsd->status.char_id,bsd->status.name,ip_bsd,bsd->bl.x, bsd->bl.y,
	vsd->status.char_id,vsd->status.name,ip_vsd,
	itm->nameid,idata->name,amount,zeny,zeny*amount,itm->unique_id,
	itm->card[0],itm->card[1],itm->card[2],itm->card[3],itm->refine))
	
	{
		Sql_ShowDebug(logs->mysql_handle);
		return;
	}	
}
void log_item_getrem (int tp,struct map_session_data* sd,struct item* itm,int amount,char * type){
	nullpo_retv(sd);
	nullpo_retv(itm);
	if( !logs->config.get_rem_item )
		return;

	logs->item_getrem_sub_sql(tp,sd,itm,amount,type);
	return;	
}
void log_item_getrem_sub_sql  (int tp,struct map_session_data* sd,struct item* itm,int amount,char * type){
	char ip_sd[20],type_[4];
	struct item_data *idata = itemdb->search(itm->nameid);
	
	if(!logs->should_log_item(itm->nameid, amount, itm->refine, idata))
		return;	
	
	pc->get_ip(sd,ip_sd);
	switch(tp){
		case 0:
			strcpy(type_,"Del");
			break;
		case 1:
			strcpy(type_,"Get");
			break;
		default:
			return;
	}
	if( SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `item_get_removelog`"
	"(`Date`,`Type_`,`Source`, `Mapname`,`PosX`,`PosY`,`AccountID`,`CharID`,`CharName`,`CharIP`,"
	"`ItemID`,`ItemName`,`Amount`,`ItemSerial`,`ItemSlot1`,`ItemSlot2`,`ItemSlot3`,`ItemSlot4`,`ItemRefiningLevel`)"
	"VALUES (NOW(),'%s','%s', '%s','%d','%d','%d','%d','%s','%s',"
	"'%d','%s','%d','%"PRIu64"','%d','%d','%d','%d','%d')",
	type_,type,mapindex_id2name(sd->mapindex),sd->bl.x,sd->bl.y,sd->status.account_id,sd->status.char_id,sd->status.name,ip_sd,
	itm->nameid,idata->name,amount,itm->unique_id,itm->card[0],itm->card[1],itm->card[2],itm->card[3],itm->refine))	
	{
		Sql_ShowDebug(logs->mysql_handle);
		return;
	}	
	
}
void log_zeny_sub_sql(struct map_session_data* sd,char * type, struct map_session_data* src_sd, int amount) {
	if( SQL_ERROR == SQL->Query(logs->mysql_handle, LOG_QUERY " INTO `%s` (`time`, `char_id`, `src_id`, `type`, `amount`, `map`) VALUES (NOW(), '%d', '%d', '%c', '%d', '%s')",
							   logs->config.log_zeny, sd->status.char_id, src_sd->status.char_id,type, amount, mapindex_id2name(sd->mapindex)) )
	{
		Sql_ShowDebug(logs->mysql_handle);
		return;
	}
}

/// logs zeny transactions
void log_zeny(struct map_session_data* sd,char * type, struct map_session_data* src_sd, int amount)
{
	nullpo_retv(sd);

	if( !logs->config.zeny || ( logs->config.zeny != 1 && abs(amount) < logs->config.zeny ) )
		return;

	logs->zeny_sub(sd,type,src_sd,amount);
}

void log_atcommand_sub_sql(struct map_session_data* sd, const char* message) {
	SqlStmt* stmt;
	
	stmt = SQL->StmtMalloc(logs->mysql_handle);
	if( SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s` (`atcommand_date`, `account_id`, `char_id`, `char_name`, `map`, `command`) VALUES (NOW(), '%d', '%d', ?, '%s', ?)", logs->config.log_gm, sd->status.account_id, sd->status.char_id, mapindex_id2name(sd->mapindex) )
	   ||  SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, sd->status.name, strnlen(sd->status.name, NAME_LENGTH))
	   ||  SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, (char*)message, safestrnlen(message, 255))
	   ||  SQL_SUCCESS != SQL->StmtExecute(stmt) )
	{
		SqlStmt_ShowDebug(stmt);
		SQL->StmtFree(stmt);
		return;
	}
	SQL->StmtFree(stmt);
}
void log_atcommand_sub_txt(struct map_session_data* sd, const char* message) {
	char timestring[255];
	time_t curtime;
	FILE* logfp;
	
	if( ( logfp = fopen(logs->config.log_gm, "a") ) == NULL )
		return;
	time(&curtime);
	strftime(timestring, sizeof(timestring), "%m/%d/%Y %H:%M:%S", localtime(&curtime));
	fprintf(logfp, "%s - %s[%d]: %s\n", timestring, sd->status.name, sd->status.account_id, message);
	fclose(logfp);
}
/// logs used atcommands
void log_atcommand(struct map_session_data* sd, const char* message)
{
	nullpo_retv(sd);

	if( !logs->config.commands ||
	    !pc->should_log_commands(sd) )
		return;

	logs->atcommand_sub(sd,message);
}

void log_npc_sub_sql(struct map_session_data *sd, const char *message) {
	SqlStmt* stmt;
	stmt = SQL->StmtMalloc(logs->mysql_handle);
	if( SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s` (`npc_date`, `account_id`, `char_id`, `char_name`, `map`, `mes`) VALUES (NOW(), '%d', '%d', ?, '%s', ?)", logs->config.log_npc, sd->status.account_id, sd->status.char_id, mapindex_id2name(sd->mapindex) )
	   ||  SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, sd->status.name, strnlen(sd->status.name, NAME_LENGTH))
	   ||  SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, (char*)message, safestrnlen(message, 255))
	   ||  SQL_SUCCESS != SQL->StmtExecute(stmt) )
	{
		SqlStmt_ShowDebug(stmt);
		SQL->StmtFree(stmt);
		return;
	}
	SQL->StmtFree(stmt);
}
void log_npc_sub_txt(struct map_session_data *sd, const char *message) {
	char timestring[255];
	time_t curtime;
	FILE* logfp;
	
	if( ( logfp = fopen(logs->config.log_npc, "a") ) == NULL )
		return;
	time(&curtime);
	strftime(timestring, sizeof(timestring), "%m/%d/%Y %H:%M:%S", localtime(&curtime));
	fprintf(logfp, "%s - %s[%d]: %s\n", timestring, sd->status.name, sd->status.account_id, message);
	fclose(logfp);
}
/// logs messages passed to script command 'logmes'
void log_npc(struct map_session_data* sd, const char* message)
{
	nullpo_retv(sd);

	if( !logs->config.npc )
		return;

	logs->npc_sub(sd,message);
}

void log_chat_sub_sql(e_log_chat_type type, int type_id, int src_charid, int src_accid, const char *mapname, int x, int y, const char* dst_charname, const char* message) {
	SqlStmt* stmt;
	
	stmt = SQL->StmtMalloc(logs->mysql_handle);
	if( SQL_SUCCESS != SQL->StmtPrepare(stmt, LOG_QUERY " INTO `%s` (`time`, `type`, `type_id`, `src_charid`, `src_accountid`, `src_map`, `src_map_x`, `src_map_y`, `dst_charname`, `message`) VALUES (NOW(), '%c', '%d', '%d', '%d', '%s', '%d', '%d', ?, ?)", logs->config.log_chat, logs->chattype2char(type), type_id, src_charid, src_accid, mapname, x, y)
	 || SQL_SUCCESS != SQL->StmtBindParam(stmt, 0, SQLDT_STRING, (char*)dst_charname, safestrnlen(dst_charname, NAME_LENGTH))
	 || SQL_SUCCESS != SQL->StmtBindParam(stmt, 1, SQLDT_STRING, (char*)message, safestrnlen(message, CHAT_SIZE_MAX))
	 || SQL_SUCCESS != SQL->StmtExecute(stmt)
	) {
		SqlStmt_ShowDebug(stmt);
		SQL->StmtFree(stmt);
		return;
	}
	SQL->StmtFree(stmt);
}
void log_chat_sub_txt(e_log_chat_type type, int type_id, int src_charid, int src_accid, const char *mapname, int x, int y, const char* dst_charname, const char* message) {
	char timestring[255];
	time_t curtime;
	FILE* logfp;
	
	if( ( logfp = fopen(logs->config.log_chat, "a") ) == NULL )
		return;
	time(&curtime);
	strftime(timestring, sizeof(timestring), "%m/%d/%Y %H:%M:%S", localtime(&curtime));
	fprintf(logfp, "%s - %c,%d,%d,%d,%s,%d,%d,%s,%s\n", timestring, logs->chattype2char(type), type_id, src_charid, src_accid, mapname, x, y, dst_charname, message);
	fclose(logfp);
}

/// logs chat
void log_chat(e_log_chat_type type, int type_id, int src_charid, int src_accid, const char *mapname, int x, int y, const char* dst_charname, const char* message) {
	if( ( logs->config.chat&type ) == 0 ) {
		// disabled
		return;
	}

	if( logs->config.log_chat_woe_disable && ( map->agit_flag || map->agit2_flag ) ) {
		// no chat logging during woe
		return;
	}

	logs->chat_sub(type,type_id,src_charid,src_accid,mapname,x,y,dst_charname,message);
}

void log_sql_init(void) {
	// log db connection
	logs->mysql_handle = SQL->Malloc();
	
	ShowInfo(""CL_WHITE"[SQL]"CL_RESET": Conectando com a database de Log "CL_WHITE"%s"CL_RESET" em "CL_WHITE"%s"CL_RESET"...\n",logs->db_name,logs->db_ip);
	if ( SQL_ERROR == SQL->Connect(logs->mysql_handle, logs->db_id, logs->db_pw, logs->db_ip, logs->db_port, logs->db_name) )
		exit(EXIT_FAILURE);
	ShowStatus(""CL_WHITE"[SQL]"CL_RESET": Conectado com '"CL_GREEN"sucesso"CL_RESET"' na database '"CL_WHITE"%s"CL_RESET"'.\n", logs->db_name);
	
	if (map->default_codepage[0] != '\0')
		if ( SQL_ERROR == SQL->SetEncoding(logs->mysql_handle, map->default_codepage) )
			Sql_ShowDebug(logs->mysql_handle);
}
void log_sql_final(void) {
	ShowStatus("Fechando a conexão com a database de Log....\n");
	SQL->Free(logs->mysql_handle);
	logs->mysql_handle = NULL;
}

void log_set_defaults(void) {
	memset(&logs->config, 0, sizeof(logs->config));

	//LOG FILTER Default values
	logs->config.refine_items_log = 5;    // log refined items, with refine >= +5
	logs->config.rare_items_log   = 100;  // log rare items. drop chance <= 1%
	logs->config.price_items_log  = 1000; // 1000z
	logs->config.amount_items_log = 100;
}


int log_config_read(const char* cfgName) {
	static int count = 0;
	char line[1024], w1[1024], w2[1024];
	FILE *fp;

	if( count++ == 0 )
		log_set_defaults();

	if( ( fp = fopen(cfgName, "r") ) == NULL ) {
		ShowError("Log: Arquivo nao encontrado %s\n", cfgName);
		return 1;
	}

	while (fgets(line, sizeof(line), fp)) {
		if (line[0] == '/' && line[1] == '/')
			continue;

		if (sscanf(line, "%1023[^:]: %1023[^\r\n]", w1, w2) == 2) {
			if( strcmpi(w1, "enable_logs") == 0 )
				logs->enable_logs = (bool)config_switch(w2);
			else if( strcmpi(w1, "sql_logs") == 0 )
				logs->config.sql_logs = (bool)config_switch(w2);
//start of common filter settings
			else if( strcmpi(w1, "rare_items_log") == 0 )
				logs->config.rare_items_log = atoi(w2);
			else if( strcmpi(w1, "refine_items_log") == 0 )
				logs->config.refine_items_log = atoi(w2);
			else if( strcmpi(w1, "price_items_log") == 0 )
				logs->config.price_items_log = atoi(w2);
			else if( strcmpi(w1, "amount_items_log") == 0 )
				logs->config.amount_items_log = atoi(w2);
//end of common filter settings
			else if( strcmpi(w1, "log_branch") == 0 )
				logs->config.branch = config_switch(w2);
			else if( strcmpi(w1, "log_filter") == 0 )
				logs->config.filter = config_switch(w2);
			else if( strcmpi(w1, "log_zeny") == 0 )
				logs->config.zeny = config_switch(w2);
			else if( strcmpi(w1, "log_commands") == 0 )
				logs->config.commands = config_switch(w2);
			else if( strcmpi(w1, "log_npc") == 0 )
				logs->config.npc = config_switch(w2);
			else if( strcmpi(w1, "log_chat") == 0 )
				logs->config.chat = config_switch(w2);
			else if( strcmpi(w1, "log_mvpdrop") == 0 )
				logs->config.mvpdrop = config_switch(w2);
			else if( strcmpi(w1, "log_chat_woe_disable") == 0 )
				logs->config.log_chat_woe_disable = (bool)config_switch(w2);
			else if( strcmpi(w1, "log_branch_db") == 0 )
				safestrncpy(logs->config.log_branch, w2, sizeof(logs->config.log_branch));
			else if( strcmpi(w1, "log_pick_db") == 0 )
				safestrncpy(logs->config.log_pick, w2, sizeof(logs->config.log_pick));
			else if( strcmpi(w1, "log_zeny_db") == 0 )
				safestrncpy(logs->config.log_zeny, w2, sizeof(logs->config.log_zeny));
			else if( strcmpi(w1, "log_mvpdrop_db") == 0 )
				safestrncpy(logs->config.log_mvpdrop, w2, sizeof(logs->config.log_mvpdrop));
			else if( strcmpi(w1, "log_gm_db") == 0 )
				safestrncpy(logs->config.log_gm, w2, sizeof(logs->config.log_gm));
			else if( strcmpi(w1, "log_npc_db") == 0 )
				safestrncpy(logs->config.log_npc, w2, sizeof(logs->config.log_npc));
			else if( strcmpi(w1, "log_chat_db") == 0 )
				safestrncpy(logs->config.log_chat, w2, sizeof(logs->config.log_chat));
			
			else if( strcmpi(w1, "log_cards") == 0 )
				logs->config.cards = config_switch(w2);
			else if( strcmpi(w1, "log_buyingstore") == 0 )
				logs->config.buyingstore = config_switch(w2);
			else if( strcmpi(w1, "log_vending") == 0 )
				logs->config.vending = config_switch(w2);
			else if( strcmpi(w1, "log_consume") == 0 )
				logs->config.consume = config_switch(w2);
			else if( strcmpi(w1, "log_mob_pick_drop") == 0 )
				logs->config.mob_pick_drop = config_switch(w2);	
			else if( strcmpi(w1, "log_pc_pick_drop") == 0 )
				logs->config.pc_pick_drop = config_switch(w2);	
			else if( strcmpi(w1, "log_npc_buy_sell") == 0 )
				logs->config.npc_buy_sell = config_switch(w2);
			else if( strcmpi(w1, "log_produce") == 0 )
				logs->config.produce = config_switch(w2);	
			else if( strcmpi(w1, "log_storage") == 0 )
				logs->config.storage = config_switch(w2);	
			else if( strcmpi(w1, "log_gstorage") == 0 )
				logs->config.gstorage = config_switch(w2);	
			else if( strcmpi(w1, "log_get_remove_item") == 0 )
				logs->config.get_rem_item = config_switch(w2);	
			else if( strcmpi(w1, "log_mail") == 0 )
				logs->config.mail = config_switch(w2);
			else if( strcmpi(w1, "log_trade") == 0 )
				logs->config.trade = config_switch(w2);	
			else if( strcmpi(w1, "log_buycash") == 0 )
				logs->config.buycash = config_switch(w2);			
			//support the import command, just like any other config
			else if( strcmpi(w1,"import") == 0 )
				logs->config_read(w2);
			else
				ShowWarning("Opcao desconhecida '%s' no arquivo %s\n", w1, cfgName);
		}
	}

	fclose(fp);

	if( --count == 0 ) {// report final logging state
		const char* target = logs->config.sql_logs ? "table" : "file";

		if( logs->enable_logs && logs->config.filter ) {
			ShowInfo("Registrando transacoes de itens para %s '%s'.\n", target, logs->config.log_pick);
		}
		if( logs->config.branch ) {
			ShowInfo("Registrando invocacoes de monstros para %s '%s'.\n", target, logs->config.log_pick);
		}
		if( logs->config.chat ) {
			ShowInfo("Registrando chat para %s '%s'.\n", target, logs->config.log_chat);
		}
		if( logs->config.commands ) {
			ShowInfo("Registrando comandos para %s '%s'.\n", target, logs->config.log_gm);
		}
		if( logs->config.mvpdrop ) {
			ShowInfo("Registrando drop de MVPs para %s '%s'.\n", target, logs->config.log_mvpdrop);
		}
		if( logs->config.npc ) {
			ShowInfo("Registrando 'logmes' mensagens para %s '%s'.\n", target, logs->config.log_npc);
		}
		if( logs->config.zeny ) {
			ShowInfo("Registrando transacoes de Zeny para %s '%s'.\n", target, logs->config.log_zeny);
		}
		logs->config_done();
	}

	return 0;
}
void log_config_complete(void) {
	if( logs->config.sql_logs ) {
		logs->zeny_sub = log_zeny_sub_sql;
		logs->npc_sub = log_npc_sub_sql;
		logs->chat_sub = log_chat_sub_sql;
		logs->atcommand_sub = log_atcommand_sub_sql;
		logs->branch_sub = log_branch_sub_sql;
	}
}
void log_defaults(void) {
	logs = &log_s;
	
	sprintf(logs->db_ip,"127.0.0.1");
	sprintf(logs->db_id,"ragnarok");
	sprintf(logs->db_pw,"ragnarok");
	sprintf(logs->db_name,"log");

	logs->db_port = 3306;
	logs->mysql_handle = NULL;
	/* */
	
	logs->zeny = log_zeny;
	logs->npc = log_npc;
	logs->chat = log_chat;
	logs->atcommand = log_atcommand;
	logs->branch = log_branch;
	
	/* will be modified in a few seconds once loading is complete. */

	logs->npc_sub = log_npc_sub_txt;
	logs->chat_sub = log_chat_sub_txt;
	logs->atcommand_sub = log_atcommand_sub_txt;
	logs->branch_sub = log_branch_sub_txt;
	
	logs->config_read = log_config_read;
	logs->config_done = log_config_complete;
	logs->sql_init = log_sql_init;
	logs->sql_final = log_sql_final;

	logs->chattype2char = log_chattype2char;
	logs->should_log_item = should_log_item;
	
/*=======BrAthena Modifications================*/

	//CashShop Log
	logs->cash_buy_sql = log_cash_buy_sql;
	logs->cash_buy_sub_sql = log_cash_buy_sub_sql;
	
	//Card Insert/Remove Log
	logs->card = log_card;
	logs->card_sub_sql = log_card_sub_sql;
	
	//Trade Logs
	logs->trade = log_trade;
	logs->trade_sub_sql = log_trade_sub_sql;

	//Vending Purchase Log
	logs->vending = log_vending;
	logs->vending_sub_sql = log_vending_sub_sql;
	
	//NPC Shop Buy/Sell Log
	logs->npc_shop = log_npc_shop;
	logs->npc_shop_sub_sql = log_npc_shop_sub_sql;

	//Player/Mob Pick/Drop Log
	logs->pickdrop = log_pickdrop;
	logs->pickdrop_sub_sql = log_pickdrop_sub_sql;
	
	//Item Consume Log
	logs->consume = log_consume;
	logs->consume_sub_sql = log_consume_sub_sql;
	
	//Item Produce Log
	logs->produce = log_produce;
	logs->produce_sub_sql = log_produce_sub_sql;	
	
	//Storage Log
	logs->storage = log_storage;
	logs->storage_sub_sql = log_storage_sub_sql;	
	
	//Guild Storage Log
	logs->gstorage = log_gstorage;
	logs->gstorage_sub_sql = log_gstorage_sub_sql;	

	//Mail Log
	logs->mail = log_mail;
	logs->mail_sub_sql = log_mail_sub_sql;

	//BuyingStore
	logs->buyingstore = log_buyingstore;
	logs->buyingstore_sub_sql = log_buyingstore_sub_sql;
	
	//Item Get/Remove log
	logs->item_getrem = log_item_getrem;
	logs->item_getrem_sub_sql = log_item_getrem_sub_sql;	
	
/*---------------------------------------------*/
}
