/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/map/elemental.c                                                        *
* Fun��es referentes aos Elementais de Feiticeiro                            *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licen�a GNU GPL                                           *
* Para mais informa��es leia o arquivo LICENSE na ra�z do emulador           *
*****************************************************************************/

#define BRATHENA_CORE

#include "elemental.h"

#include "map/atcommand.h"
#include "map/battle.h"
#include "map/chrif.h"
#include "map/clif.h"
#include "map/guild.h"
#include "map/intif.h"
#include "map/itemdb.h"
#include "map/log.h"
#include "map/map.h"
#include "map/mob.h"
#include "map/npc.h"
#include "map/party.h"
#include "map/pc.h"
#include "map/pet.h"
#include "map/script.h"
#include "map/skill.h"
#include "map/status.h"
#include "map/trade.h"
#include "map/unit.h"
#include "common/cbasetypes.h"
#include "common/memmgr.h"
#include "common/mmo.h"
#include "common/nullpo.h"
#include "common/random.h"
#include "common/showmsg.h"
#include "common/socket.h"
#include "common/strlib.h"
#include "common/timer.h"
#include "common/utils.h"

#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct elemental_interface elemental_s;
struct elemental_interface *elemental;

int elemental_search_index(int class_) {
	int i;
	ARR_FIND(0, MAX_ELEMENTAL_CLASS, i, elemental->db[i].class_ == class_);
	return (i == MAX_ELEMENTAL_CLASS)?-1:i;
}

bool elemental_class(int class_) {
	return (bool)(elemental->search_index(class_) > -1);
}

struct view_data * elemental_get_viewdata(int class_) {
	int i = elemental->search_index(class_);
	if( i < 0 )
		return 0;

	return &elemental->db[i].vd;
}

int elemental_create(struct map_session_data *sd, int class_, unsigned int lifetime) {
	struct s_elemental ele;
	struct s_elemental_db *db;
	int i, summon_level, skill_level;

	nullpo_retr(1,sd);

	if( (i = elemental->search_index(class_)) < 0 )
		return 0;

	db = &elemental->db[i];
	memset(&ele,0,sizeof(struct s_elemental));

	ele.char_id = sd->status.char_id;
	ele.class_ = class_;
	ele.mode = EL_MODE_PASSIVE; // Initial mode
	summon_level = db->status.size+1; // summon level

	//[(Caster's Max HP/ 3 ) + (Caster's INT x 10 )+ (Caster's Job Level x 20 )] x [(Elemental Summon Level + 2) / 3]
	ele.hp = ele.max_hp = (sd->battle_status.max_hp/3 + sd->battle_status.int_*10 + sd->status.job_level) * ((summon_level + 2) / 3);
	//Caster's Max SP /4
	ele.sp = ele.max_sp = sd->battle_status.max_sp/4;
	//Caster's [ Max SP / (18 / Elemental Summon Skill Level) 1- 100 ]
	ele.atk = (sd->battle_status.max_sp / (18 / summon_level)  * 1 - 100);
	//Caster's [ Max SP / (18 / Elemental Summon Skill Level) ]
	ele.atk2 = sd->battle_status.max_sp / 18;
	//Caster's HIT + (Caster's Base Level)
	ele.hit = sd->battle_status.hit + sd->status.base_level;
	//[Elemental Summon Skill Level x (Caster's INT / 2 + Caster's DEX / 4)]
	ele.matk = summon_level * (sd->battle_status.int_ / 2 + sd->battle_status.dex / 4);
	//150 + [Caster's DEX / 10] + [Elemental Summon Skill Level x 3 ]
	ele.amotion = 150 + sd->battle_status.dex / 10 + summon_level * 3;
	//Caster's DEF + (Caster's Base Level / (5 - Elemental Summon Skill Level)
	ele.def = sd->battle_status.def + sd->status.base_level / (5-summon_level);
	//Caster's MDEF + (Caster's INT / (5 - Elemental Summon Skill Level)
	ele.mdef = sd->battle_status.mdef + sd->battle_status.int_ / (5-summon_level);
	//Caster's FLEE + (Caster's Base Level / (5 - Elemental Summon Skill Level)
	ele.flee = sd->status.base_level / (5-summon_level);
	//Caster's HIT + (Caster's Base Level)
	ele.hit = sd->battle_status.hit + sd->status.base_level;

	//per individual bonuses
	switch(db->class_){
	case ELEID_EL_AGNI_S:
	case ELEID_EL_AGNI_M:
	case ELEID_EL_AGNI_L:
		//ATK + (Summon Agni Skill Level x 20) / HIT + (Summon Agni Skill Level x 10)
		ele.atk += summon_level * 20;
		ele.atk2 += summon_level * 20;
		ele.hit += summon_level * 10;
		break;
	case ELEID_EL_AQUA_S:
	case ELEID_EL_AQUA_M:
	case ELEID_EL_AQUA_L:
		//MDEF + (Summon Aqua Skill Level x 10) / MATK + (Summon Aqua Skill Level x 20)
		ele.mdef += summon_level * 10;
		ele.matk += summon_level * 20;
		break;
	case ELEID_EL_VENTUS_S:
	case ELEID_EL_VENTUS_M:
	case ELEID_EL_VENTUS_L:
		//FLEE + (Summon Ventus Skill Level x 20) / MATK + (Summon Ventus Skill Level x 10)
		ele.flee += summon_level * 20;
		ele.matk += summon_level * 10;
		break;
	case ELEID_EL_TERA_S:
	case ELEID_EL_TERA_M:
	case ELEID_EL_TERA_L:
		//DEF + (Summon Tera Skill Level x 25) / ATK + (Summon Tera Skill Level x 5)
		ele.def += summon_level * 25;
		ele.atk += summon_level * 5;
		ele.atk2 += summon_level * 5;
		break;
	}

	if ((skill_level=pc->checkskill(sd,SO_EL_SYMPATHY)) > 0) {
		ele.hp = ele.max_hp += ele.max_hp * 5 * skill_level / 100;
		ele.sp = ele.max_sp += ele.max_sp * 5 * skill_level / 100;
		ele.atk += 25 * skill_level;
		ele.atk2 += 25 * skill_level;
		ele.matk += 25 * skill_level;
	}

	ele.life_time = lifetime;

	// Request Char Server to create this elemental
	intif->elemental_create(&ele);

	return 1;
}

int elemental_get_lifetime(struct elemental_data *ed) {
	const struct TimerData * td;
	if( ed == NULL || ed->summon_timer == INVALID_TIMER )
		return 0;

	td = timer->get(ed->summon_timer);
	return (td != NULL) ? DIFF_TICK32(td->tick, timer->gettick()) : 0;
}

int elemental_save(struct elemental_data *ed) {
	nullpo_retr(1, ed);
	ed->elemental.mode = ed->battle_status.mode;
	ed->elemental.hp = ed->battle_status.hp;
	ed->elemental.sp = ed->battle_status.sp;
	ed->elemental.max_hp = ed->battle_status.max_hp;
	ed->elemental.max_sp = ed->battle_status.max_sp;
	ed->elemental.atk = ed->battle_status.rhw.atk;
	ed->elemental.atk2 = ed->battle_status.rhw.atk2;
	ed->elemental.matk = ed->battle_status.matk_min;
	ed->elemental.def = ed->battle_status.def;
	ed->elemental.mdef = ed->battle_status.mdef;
	ed->elemental.flee = ed->battle_status.flee;
	ed->elemental.hit = ed->battle_status.hit;
	ed->elemental.life_time = elemental->get_lifetime(ed);
	intif->elemental_save(&ed->elemental);
	return 1;
}

int elemental_summon_end_timer(int tid, int64 tick, int id, intptr_t data) {
	struct map_session_data *sd;
	struct elemental_data *ed;

	if( (sd = map->id2sd(id)) == NULL )
		return 1;
	if( (ed = sd->ed) == NULL )
		return 1;

	if( ed->summon_timer != tid ) {
		ShowError("elemental_summon_end_timer %d != %d.\n", ed->summon_timer, tid);
		return 0;
	}

	ed->summon_timer = INVALID_TIMER;
	elemental->delete(ed, 0); // Elemental's summon time is over.

	return 0;
}

void elemental_summon_stop(struct elemental_data *ed) {
	nullpo_retv(ed);
	if( ed->summon_timer != INVALID_TIMER )
		timer->delete(ed->summon_timer, elemental->summon_end_timer);
	ed->summon_timer = INVALID_TIMER;
}

int elemental_delete(struct elemental_data *ed, int reply) {
	struct map_session_data *sd;
	nullpo_ret(ed);

	sd = ed->master;
	ed->elemental.life_time = 0;

	elemental->clean_effect(ed);
	elemental->summon_stop(ed);

	if( !sd )
		return unit->free(&ed->bl, 0);

	sd->ed = NULL;
	sd->status.ele_id = 0;

	if( !ed->bl.prev )
		return unit->free(&ed->bl, 0);

	return unit->remove_map(&ed->bl, 0, ALC_MARK);
}

void elemental_summon_init(struct elemental_data *ed) {
	nullpo_retv(ed);
	if (ed->summon_timer == INVALID_TIMER)
		ed->summon_timer = timer->add(timer->gettick() + ed->elemental.life_time, elemental->summon_end_timer, ed->master->bl.id, 0);

	ed->regen.state.block = 0;
}

int elemental_data_received(struct s_elemental *ele, bool flag) {
	struct map_session_data *sd;
	struct elemental_data *ed;
	struct s_elemental_db *db;
	int i;

	nullpo_ret(ele);
	i = elemental->search_index(ele->class_);
	if( (sd = map->charid2sd(ele->char_id)) == NULL )
		return 0;

	if( !flag || i < 0 ) { // Not created - loaded - DB info
		sd->status.ele_id = 0;
		return 0;
	}

	db = &elemental->db[i];
	if( !sd->ed ) {
		// Initialize it after first summon.
		CREATE(ed, struct elemental_data, 1);
		ed->bl.type = BL_ELEM;
		ed->bl.id = npc->get_new_npc_id();
		sd->ed = ed;
		ed->master = sd;
		ed->db = db;
		memcpy(&ed->elemental, ele, sizeof(struct s_elemental));
		status->set_viewdata(&ed->bl, ed->elemental.class_);
		ed->vd->head_mid = 10; // Why?
		status->change_init(&ed->bl);
		unit->dataset(&ed->bl);
		ed->ud.dir = sd->ud.dir;

		ed->bl.m = sd->bl.m;
		ed->bl.x = sd->bl.x;
		ed->bl.y = sd->bl.y;
		unit->calc_pos(&ed->bl, sd->bl.x, sd->bl.y, sd->ud.dir);
		ed->bl.x = ed->ud.to_x;
		ed->bl.y = ed->ud.to_y;

		map->addiddb(&ed->bl);
		status_calc_elemental(ed,SCO_FIRST);
		ed->last_spdrain_time = ed->last_thinktime = timer->gettick();
		ed->summon_timer = INVALID_TIMER;
		elemental->summon_init(ed);
	} else {
		memcpy(&sd->ed->elemental, ele, sizeof(struct s_elemental));
		ed = sd->ed;
	}

	sd->status.ele_id = ele->elemental_id;

	if( ed->bl.prev == NULL && sd->bl.prev != NULL ) {
		map->addblock(&ed->bl);
		clif->spawn(&ed->bl);
		clif->elemental_info(sd);
		clif->elemental_updatestatus(sd,SP_HP);
		clif->hpmeter_single(sd->fd,ed->bl.id,ed->battle_status.hp,ed->battle_status.max_hp);
		clif->elemental_updatestatus(sd,SP_SP);
	}

	return 1;
}

int elemental_clean_single_effect(struct elemental_data *ed, uint16 skill_id) {
	struct block_list *bl;
	sc_type type = status->skill2sc(skill_id);

	nullpo_ret(ed);

	bl = battle->get_master(&ed->bl);

	if( type ) {
		switch( type ) {
				// Just remove status change.
			case SC_PYROTECHNIC_OPTION:
			case SC_HEATER_OPTION:
			case SC_TROPIC_OPTION:
			case SC_FIRE_CLOAK_OPTION:
			case SC_AQUAPLAY_OPTION:
			case SC_WATER_SCREEN_OPTION:
			case SC_COOLER_OPTION:
			case SC_CHILLY_AIR_OPTION:
			case SC_GUST_OPTION:
			case SC_WIND_STEP_OPTION:
			case SC_BLAST_OPTION:
			case SC_WATER_DROP_OPTION:
			case SC_WIND_CURTAIN_OPTION:
			case SC_WILD_STORM_OPTION:
			case SC_PETROLOGY_OPTION:
			case SC_SOLID_SKIN_OPTION:
			case SC_CURSED_SOIL_OPTION:
			case SC_STONE_SHIELD_OPTION:
			case SC_UPHEAVAL_OPTION:
			case SC_CIRCLE_OF_FIRE_OPTION:
			case SC_TIDAL_WEAPON_OPTION:
				if( bl ) status_change_end(bl,type,INVALID_TIMER); // Master
				status_change_end(&ed->bl,type-1,INVALID_TIMER); // Elemental Spirit
				break;
			case SC_ZEPHYR:
				if( bl ) status_change_end(bl,type,INVALID_TIMER);
				break;
			default:
				ShowWarning("SC invalido=%d em elemental_clean_single_effect\n",type);
				break;
		}
	}

	return 1;
}

int elemental_clean_effect(struct elemental_data *ed) {
	struct map_session_data *sd;

	nullpo_ret(ed);

	// Elemental side
	status_change_end(&ed->bl, SC_TROPIC, INVALID_TIMER);
	status_change_end(&ed->bl, SC_HEATER, INVALID_TIMER);
	status_change_end(&ed->bl, SC_AQUAPLAY, INVALID_TIMER);
	status_change_end(&ed->bl, SC_COOLER, INVALID_TIMER);
	status_change_end(&ed->bl, SC_CHILLY_AIR, INVALID_TIMER);
	status_change_end(&ed->bl, SC_PYROTECHNIC, INVALID_TIMER);
	status_change_end(&ed->bl, SC_FIRE_CLOAK, INVALID_TIMER);
	status_change_end(&ed->bl, SC_WATER_DROP, INVALID_TIMER);
	status_change_end(&ed->bl, SC_WATER_SCREEN, INVALID_TIMER);
	status_change_end(&ed->bl, SC_GUST, INVALID_TIMER);
	status_change_end(&ed->bl, SC_WIND_STEP, INVALID_TIMER);
	status_change_end(&ed->bl, SC_BLAST, INVALID_TIMER);
	status_change_end(&ed->bl, SC_WIND_CURTAIN, INVALID_TIMER);
	status_change_end(&ed->bl, SC_WILD_STORM, INVALID_TIMER);
	status_change_end(&ed->bl, SC_PETROLOGY, INVALID_TIMER);
	status_change_end(&ed->bl, SC_SOLID_SKIN, INVALID_TIMER);
	status_change_end(&ed->bl, SC_CURSED_SOIL, INVALID_TIMER);
	status_change_end(&ed->bl, SC_STONE_SHIELD, INVALID_TIMER);
	status_change_end(&ed->bl, SC_UPHEAVAL, INVALID_TIMER);
	status_change_end(&ed->bl, SC_CIRCLE_OF_FIRE, INVALID_TIMER);
	status_change_end(&ed->bl, SC_TIDAL_WEAPON, INVALID_TIMER);

	if( (sd = ed->master) == NULL )
		return 0;

	// Master side
	status_change_end(&sd->bl, SC_TROPIC_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_HEATER_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_AQUAPLAY_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_COOLER_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_CHILLY_AIR_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_PYROTECHNIC_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_FIRE_CLOAK_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_WATER_DROP_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_WATER_SCREEN_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_GUST_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_WIND_STEP_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_BLAST_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_WATER_DROP_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_WIND_CURTAIN_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_WILD_STORM_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_ZEPHYR, INVALID_TIMER);
	status_change_end(&sd->bl, SC_WIND_STEP_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_PETROLOGY_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_SOLID_SKIN_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_CURSED_SOIL_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_STONE_SHIELD_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_UPHEAVAL_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_CIRCLE_OF_FIRE_OPTION, INVALID_TIMER);
	status_change_end(&sd->bl, SC_TIDAL_WEAPON_OPTION, INVALID_TIMER);

	return 1;
}

int elemental_action(struct elemental_data *ed, struct block_list *bl, int64 tick) {
	struct skill_condition req;
	uint16 skill_id, skill_lv;
	int i;

	nullpo_ret(ed);
	nullpo_ret(bl);

	if( !ed->master )
		return 0;

	if( ed->target_id )
		elemental->unlocktarget(ed); // Remove previous target.

	ARR_FIND(0, MAX_ELESKILLTREE, i, ed->db->skill[i].id && (ed->db->skill[i].mode&EL_SKILLMODE_AGGRESSIVE));
	if( i == MAX_ELESKILLTREE )
		return 0;

	skill_id = ed->db->skill[i].id;
	skill_lv = ed->db->skill[i].lv;

	if( elemental->skillnotok(skill_id, ed) )
		return 0;

	if( ed->ud.skilltimer != INVALID_TIMER )
		return 0;
	else if( DIFF_TICK(tick, ed->ud.canact_tick) < 0 )
		return 0;

	ed->target_id = ed->ud.skilltarget = bl->id; // Set new target
	ed->last_thinktime = tick;

	// Not in skill range.
	if( !battle->check_range(&ed->bl,bl,skill->get_range(skill_id,skill_lv)) ) {
		// Try to walk to the target.
		if( !unit->walktobl(&ed->bl, bl, skill->get_range(skill_id,skill_lv), 2) )
			elemental->unlocktarget(ed);
		else {
			// Walking, waiting to be in range. Client don't handle it, then we must handle it here.
			int walk_dist = distance_bl(&ed->bl,bl) - skill->get_range(skill_id,skill_lv);
			ed->ud.skill_id = skill_id;
			ed->ud.skill_lv = skill_lv;

			if( skill->get_inf(skill_id) & INF_GROUND_SKILL )
				ed->ud.skilltimer = timer->add(tick+(int64)status->get_speed(&ed->bl)*walk_dist, skill->castend_pos, ed->bl.id, 0);
			else
				ed->ud.skilltimer = timer->add(tick+(int64)status->get_speed(&ed->bl)*walk_dist, skill->castend_id, ed->bl.id, 0);
		}
		return 1;

	}

	req = elemental->skill_get_requirements(skill_id, skill_lv);

	if(req.hp || req.sp){
		struct map_session_data *sd = BL_CAST(BL_PC, battle->get_master(&ed->bl));
		if( sd ){
			if( sd->skill_id_old != SO_EL_ACTION && //regardless of remaining HP/SP it can be cast
				(status_get_hp(&ed->bl) < req.hp || status_get_sp(&ed->bl) < req.sp) )
				return 1;
			else
				status_zap(&ed->bl, req.hp, req.sp);
		}
	}

	//Otherwise, just cast the skill.
	if( skill->get_inf(skill_id) & INF_GROUND_SKILL )
		unit->skilluse_pos(&ed->bl, bl->x, bl->y, skill_id, skill_lv);
	else
		unit->skilluse_id(&ed->bl, bl->id, skill_id, skill_lv);

	// Reset target.
	ed->target_id = 0;

	return 1;
}

/*===============================================================
 * Action that elemental perform after changing mode.
 * Activates one of the skills of the new mode.
 *-------------------------------------------------------------*/
int elemental_change_mode_ack(struct elemental_data *ed, int mode) {
	struct block_list *bl = &ed->master->bl;
	uint16 skill_id, skill_lv;
	int i;

	nullpo_ret(ed);

	if( !bl )
		return 0;

	// Select a skill.
	ARR_FIND(0, MAX_ELESKILLTREE, i, ed->db->skill[i].id && (ed->db->skill[i].mode&mode));
	if( i == MAX_ELESKILLTREE )
		return 0;

	skill_id = ed->db->skill[i].id;
	skill_lv = ed->db->skill[i].lv;

	if( elemental->skillnotok(skill_id, ed) )
		return 0;

	if( ed->ud.skilltimer != INVALID_TIMER )
		return 0;
	else if( DIFF_TICK(timer->gettick(), ed->ud.canact_tick) < 0 )
		return 0;

	ed->target_id = bl->id; // Set new target
	ed->last_thinktime = timer->gettick();

	if( skill->get_inf(skill_id) & INF_GROUND_SKILL )
		unit->skilluse_pos(&ed->bl, bl->x, bl->y, skill_id, skill_lv);
	else
		unit->skilluse_id(&ed->bl,bl->id,skill_id,skill_lv);

	ed->target_id = 0; // Reset target after casting the skill  to avoid continuous attack.

	return 1;
}

/*===============================================================
 * Change elemental mode.
 *-------------------------------------------------------------*/
int elemental_change_mode(struct elemental_data *ed, int mode) {
	nullpo_ret(ed);

	// Remove target
	elemental->unlocktarget(ed);

	// Removes the effects of the previous mode.
	if(ed->elemental.mode != mode ) elemental->clean_effect(ed);

	ed->battle_status.mode = ed->elemental.mode = mode;

	// Normalize elemental mode to elemental skill mode.
	if( mode == EL_MODE_AGGRESSIVE ) mode = EL_SKILLMODE_AGGRESSIVE; // Aggressive spirit mode -> Aggressive spirit skill.
	else if( mode == EL_MODE_ASSIST ) mode = EL_SKILLMODE_ASSIST;    // Assist spirit mode -> Assist spirit skill.
	else mode = EL_SKILLMODE_PASIVE;                                 // Passive spirit mode -> Passive spirit skill.

	// Use a skill immediately after every change mode.
	if( mode != EL_SKILLMODE_AGGRESSIVE )
		elemental->change_mode_ack(ed,mode);
	return 1;
}

void elemental_heal(struct elemental_data *ed, int hp, int sp) {
	nullpo_retv(ed);
	if( hp )
		clif->elemental_updatestatus(ed->master, SP_HP);
	if( sp )
		clif->elemental_updatestatus(ed->master, SP_SP);
}

int elemental_dead(struct elemental_data *ed) {
	elemental->delete(ed, 1);
	return 0;
}

int elemental_unlocktarget(struct elemental_data *ed) {
	nullpo_ret(ed);

	ed->target_id = 0;
	elemental_stop_attack(ed);
	elemental_stop_walking(ed, STOPWALKING_FLAG_FIXPOS);
	return 0;
}

int elemental_skillnotok(uint16 skill_id, struct elemental_data *ed) {
	int idx = skill->get_index(skill_id);
	nullpo_retr(1,ed);

	if (idx == 0)
		return 1; // invalid skill id

	return skill->not_ok(skill_id, ed->master);
}

struct skill_condition elemental_skill_get_requirements(uint16 skill_id, uint16 skill_lv){
	struct skill_condition req;
	int idx = skill->get_index(skill_id);

	memset(&req,0,sizeof(req));

	if( idx == 0 ) // invalid skill id
		return req;

	if( skill_lv < 1 || skill_lv > MAX_SKILL_LEVEL )
		return req;

	req.hp = skill->dbs->db[idx].hp[skill_lv-1];
	req.sp = skill->dbs->db[idx].sp[skill_lv-1];

	return req;
}

int elemental_set_target( struct map_session_data *sd, struct block_list *bl ) {
	struct elemental_data *ed;

	nullpo_ret(sd);
	ed = sd->ed;
	nullpo_ret(ed);
	nullpo_ret(bl);

	if( ed->bl.m != bl->m || !check_distance_bl(&ed->bl, bl, ed->db->range2) )
		return 0;

	if( !status->check_skilluse(&ed->bl, bl, 0, 0) )
		return 0;

	if( ed->target_id == 0 )
		ed->target_id = bl->id;

	return 1;
}

int elemental_ai_sub_timer_activesearch(struct block_list *bl, va_list ap) {
	struct elemental_data *ed;
	struct block_list **target;
	int dist;

	nullpo_ret(bl);

	ed = va_arg(ap,struct elemental_data *);
	nullpo_ret(ed);
	target = va_arg(ap,struct block_list**);
	nullpo_ret(target);

	//If can't seek yet, not an enemy, or you can't attack it, skip.
	if( (*target) == bl || !status->check_skilluse(&ed->bl, bl, 0, 0) )
		return 0;

	if( battle->check_target(&ed->bl,bl,BCT_ENEMY) <= 0 )
		return 0;

	switch( bl->type ) {
		case BL_PC:
			if( !map_flag_vs(ed->bl.m) )
				return 0;
			/* Fall through */
		default:
			dist = distance_bl(&ed->bl, bl);
			if( ((*target) == NULL || !check_distance_bl(&ed->bl, *target, dist)) && battle->check_range(&ed->bl,bl,ed->db->range2) ) { //Pick closest target?
				(*target) = bl;
				ed->target_id = bl->id;
				ed->min_chase = dist + ed->db->range3;
				if( ed->min_chase > AREA_SIZE )
					ed->min_chase = AREA_SIZE;
				return 1;
			}
			break;
	}
	return 0;
}

int elemental_ai_sub_timer(struct elemental_data *ed, struct map_session_data *sd, int64 tick) {
	struct block_list *target = NULL;
	int master_dist, view_range, mode;

	nullpo_ret(ed);
	nullpo_ret(sd);

	if( ed->bl.prev == NULL || sd == NULL || sd->bl.prev == NULL )
		return 0;

	// Check if caster can sustain the summoned elemental
	if( DIFF_TICK(tick,ed->last_spdrain_time) >= 10000 ){// Drain SP every 10 seconds
		int sp = 5;

		switch (ed->vd->class_) {
			case ELEID_EL_AGNI_M:
			case ELEID_EL_AQUA_M:
			case ELEID_EL_VENTUS_M:
			case ELEID_EL_TERA_M:
				sp = 8;
				break;
			case ELEID_EL_AGNI_L:
			case ELEID_EL_AQUA_L:
			case ELEID_EL_VENTUS_L:
			case ELEID_EL_TERA_L:
				sp = 11;
				break;
		}

		if( status_get_sp(&sd->bl) < sp ){ // Can't sustain delete it.
			elemental->delete(sd->ed,0);
			return 0;
		}

		status_zap(&sd->bl,0,sp);
		ed->last_spdrain_time = tick;
	}

	if( DIFF_TICK(tick,ed->last_thinktime) < MIN_ELETHINKTIME )
		return 0;

	ed->last_thinktime = tick;

	if( ed->ud.skilltimer != INVALID_TIMER )
		return 0;

	if( ed->ud.walktimer != INVALID_TIMER && ed->ud.walkpath.path_pos <= 2 )
		return 0; //No thinking when you just started to walk.

	if(ed->ud.walkpath.path_pos < ed->ud.walkpath.path_len && ed->ud.target == sd->bl.id)
		return 0; //No thinking until be near the master.

	if( ed->sc.count && ed->sc.data[SC_BLIND] )
		view_range = 3;
	else
		view_range = ed->db->range2;

	mode = status_get_mode(&ed->bl);

	master_dist = distance_bl(&sd->bl, &ed->bl);
	if( master_dist > AREA_SIZE ) {
		// Master out of vision range.
		elemental->unlocktarget(ed);
		unit->warp(&ed->bl,sd->bl.m,sd->bl.x,sd->bl.y,CLR_TELEPORT);
		clif->elemental_updatestatus(sd,SP_HP);
		clif->elemental_updatestatus(sd,SP_SP);
		return 0;
	} else if( master_dist > MAX_ELEDISTANCE ) {
		// Master too far, chase.
		short x = sd->bl.x, y = sd->bl.y;
		if( ed->target_id )
			elemental->unlocktarget(ed);
		if( ed->ud.walktimer != INVALID_TIMER && ed->ud.target == sd->bl.id )
			return 0; //Already walking to him
		if( DIFF_TICK(tick, ed->ud.canmove_tick) < 0 )
			return 0; //Can't move yet.
		if( map->search_freecell(&ed->bl, sd->bl.m, &x, &y, MIN_ELEDISTANCE, MIN_ELEDISTANCE, 1)
		 && unit->walktoxy(&ed->bl, x, y, 0) )
			return 0;
	}

	if( mode == EL_MODE_AGGRESSIVE ) {
		target = map->id2bl(ed->ud.target);

		if( !target )
			map->foreachinrange(elemental->ai_sub_timer_activesearch, &ed->bl, view_range, BL_CHAR, ed, &target, status_get_mode(&ed->bl));

		if( !target ) { //No targets available.
			elemental->unlocktarget(ed);
			return 1;
		}

		if( battle->check_range(&ed->bl,target,view_range) && rnd()%100 < 2 ) { // 2% chance to cast attack skill.
			if( elemental->action(ed,target,tick) )
				return 1;
		}

		//Attempt to attack.
		//At this point we know the target is attackable, we just gotta check if the range matches.
		if( ed->ud.target == target->id && ed->ud.attacktimer != INVALID_TIMER ) //Already locked.
			return 1;

		if( battle->check_range(&ed->bl, target, ed->base_status.rhw.range) ) {//Target within range, engage
			unit->attack(&ed->bl,target->id,1);
			return 1;
		}

		//Follow up if possible.
		if( !unit->walktobl(&ed->bl, target, ed->base_status.rhw.range, 2) )
			elemental->unlocktarget(ed);
	}

	return 0;
}

int elemental_ai_sub_foreachclient(struct map_session_data *sd, va_list ap) {
	int64 tick = va_arg(ap,int64);
	nullpo_ret(sd);
	if(sd->status.ele_id && sd->ed)
		elemental->ai_sub_timer(sd->ed,sd,tick);

	return 0;
}

int elemental_ai_timer(int tid, int64 tick, int id, intptr_t data) {
	map->foreachpc(elemental->ai_sub_foreachclient,tick);
	return 0;
}

/*==========================================
 * Leitura Elemental.conf - [GreenStage]
 *------------------------------------------*/
int read_elementaldb(void) {
	struct s_elemental_db *db;
	config_t elemental_config;
	config_setting_t * ele_db = NULL;
	int ele_count=0;
	
	int count = 0, ele;

	const char *config_filename = "db/re/Elemental.conf";
	memset(elemental->db,0,sizeof(elemental->db));
	
	if (libconfig->read_file(&elemental_config, config_filename)) {
		return -1;
	}
	
	ele_db = libconfig->lookup(&elemental_config, "elemental_db");
	
	if(ele_db != NULL){
		ele_count = libconfig->setting_length(ele_db);		
		for(count = 0; count < ele_count && count < MAX_ELEMENTAL_CLASS; count++){
			int int_value;
			const char *str = NULL;			
	
			config_setting_t * elemental_ = libconfig->setting_get_elem(ele_db, count);
			db = &elemental->db[count];
			
			if (!libconfig->setting_lookup_int(elemental_, "Id", &int_value)) {
				ShowWarning("elemental_db: Membro %d de elemental_db sem id valido, ignorando...\n",count);
				libconfig->setting_remove_elem(ele_db, count);
				count--;
				ele_count--;
				continue;
			}
			if(elemental->search_index(int_value)!=-1){
				ShowWarning("elemental_db: Membro %d de elemental_db com id j� existente, ignorando...\n",count);
				libconfig->setting_remove_elem(ele_db, count);
				count--;
				ele_count--;
				continue;				
			}
			if (!libconfig->setting_lookup_string(elemental_, "AegisName", &str)) {
				ShowWarning("elemental_db: Membro %d : AegisName n�o definido , ignorando...\n",count);
				libconfig->setting_remove_elem(ele_db, count);
				count--;
				ele_count--;
				continue;		
			}
			db->class_ = int_value;
			safestrncpy(db->sprite,str,sizeof(db->sprite));
			
			// Set Name equal to AegisName if not previously defined in db file
			if (!libconfig->setting_lookup_string(elemental_, "Name", &str))
				safestrncpy(db->name, db->sprite, sizeof(db->name));
			else 
				safestrncpy(db->name, str,sizeof(db->name));
			
			db->lv               = (libconfig->setting_lookup_int(elemental_, "LV", &int_value) && int_value >= 0)? int_value : 0;
			db->vd.class_        = db->class_;
			db->status.max_hp    = (libconfig->setting_lookup_int(elemental_, "HP", &int_value) && int_value >= 0)? int_value : 0;
			db->status.max_sp    = (libconfig->setting_lookup_int(elemental_, "SP", &int_value) && int_value >= 0)? int_value : 0;
			db->status.rhw.range = (libconfig->setting_lookup_int(elemental_, "Range1", &int_value) && int_value >= 0)? int_value : 0;
			db->status.rhw.atk   = (libconfig->setting_lookup_int(elemental_, "ATK1", &int_value) && int_value >= 0)? int_value : 0;
			db->status.rhw.atk2  = (libconfig->setting_lookup_int(elemental_, "ATK2", &int_value) && int_value >= 0)? int_value : 0;
			db->status.def       = (libconfig->setting_lookup_int(elemental_, "DEF", &int_value) && int_value >= 0)? int_value : 0;
			db->status.mdef      = (libconfig->setting_lookup_int(elemental_, "MDEF", &int_value) && int_value >= 0)? int_value : 0;
			db->status.str       = (libconfig->setting_lookup_int(elemental_, "STR", &int_value) && int_value >= 0)? int_value : 0;
			db->status.agi       = (libconfig->setting_lookup_int(elemental_, "AGI", &int_value) && int_value >= 0)? int_value : 0;
			db->status.vit       = (libconfig->setting_lookup_int(elemental_, "VIT", &int_value) && int_value >= 0)? int_value : 0;
			db->status.int_      = (libconfig->setting_lookup_int(elemental_, "INT", &int_value) && int_value >= 0)? int_value : 0;
			db->status.dex       = (libconfig->setting_lookup_int(elemental_, "DEX", &int_value) && int_value >= 0)? int_value : 0;
			db->status.luk       = (libconfig->setting_lookup_int(elemental_, "LUK", &int_value) && int_value >= 0)? int_value : 0;
			db->range2           = (libconfig->setting_lookup_int(elemental_, "Range2", &int_value) && int_value >= 0)? int_value : 0;
			db->range3           = (libconfig->setting_lookup_int(elemental_, "Range3", &int_value) && int_value >= 0)? int_value : 0;
			db->status.size      = (libconfig->setting_lookup_int(elemental_, "Scale", &int_value) && int_value >= 0)? int_value : 0;
			db->status.race      = (libconfig->setting_lookup_int(elemental_, "Race", &int_value) && int_value >= 0)? int_value : 0;
			db->status.aspd_rate = 1000;
			db->status.speed     = (libconfig->setting_lookup_int(elemental_, "Speed", &int_value) && int_value >= 0)? int_value : 200;
			db->status.adelay    = (libconfig->setting_lookup_int(elemental_, "aDelay", &int_value) && int_value >= 0)? int_value : 504;
			db->status.amotion   = (libconfig->setting_lookup_int(elemental_, "aMotion", &int_value) && int_value >= 0)? int_value : 1020;
			db->status.dmotion   = (libconfig->setting_lookup_int(elemental_, "dMotion", &int_value) && int_value >= 0)? int_value : 360;	
			ele                  = (libconfig->setting_lookup_int(elemental_, "Element", &int_value) && int_value >= 0)? int_value : 0;
			db->status.def_ele   = ele%10;
			db->status.ele_lv    = ele/20;

			if( db->status.def_ele >= ELE_MAX ) {
				ShowWarning("Elemental %d tem o tipo de elemento invalido %d (elemento maximo � %d)\n", db->class_, db->status.def_ele, ELE_MAX - 1);
				db->status.def_ele = ELE_NEUTRAL;
			}
			
			if( db->status.ele_lv < 1 || db->status.ele_lv > 4 ) {
				ShowWarning("Elemental %d tem nivel de elemento invalido %d (maximo 4)\n", db->class_, db->status.ele_lv);
				db->status.ele_lv = 1;
			}

	
		}
	}
	libconfig->destroy(&elemental_config);	
	ShowConf("Leitura de '"CL_WHITE"%d"CL_RESET"' entradas na tabela '"CL_WHITE"%s"CL_RESET"'.\n", count, config_filename);
	return 0;
}

/*==========================================
 * Leitura elemental_skilldb SQL [Shiraz]
 *------------------------------------------*/
int read_elemental_skilldb(void) {
	struct s_elemental_db *db;
	int i, j = 0, k = 0, class_, skill_id, skill_lv, skillmode;

	if(SQL_ERROR == SQL->Query(map->brAmysql_handle, "SELECT * FROM `%s`", get_database_name(15))) {
		Sql_ShowDebug(map->brAmysql_handle);
		return -1;
	}

	while(SQL_SUCCESS == SQL->NextRow(map->brAmysql_handle)) {
		char *row[4];
		k++;

		for(i = 0; i != 4; ++i)
			SQL->GetData(map->brAmysql_handle, i, &row[i], NULL);

		class_ = atoi(row[0]);
		ARR_FIND(0, MAX_ELEMENTAL_CLASS, i, class_ == elemental->db[i].class_);

		if(i == MAX_ELEMENTAL_CLASS) {
			ShowError("read_elemental_skilldb : Classe nao encontrada em elemental_db para a entrada de habilidade, linha %d.\n", k);
			continue;
		}

		skill_id = atoi(row[1]);
		if(skill_id < EL_SKILLBASE || skill_id >= EL_SKILLBASE + MAX_ELEMENTALSKILL) {
			ShowError("read_elemental_skilldb : Habilidade fora do alcance, linha %d.\n", k);
			continue;
		}

		db = &elemental->db[i];
		skill_lv = atoi(row[2]);

		skillmode = atoi(row[3]);
		if(skillmode < EL_SKILLMODE_PASIVE || skillmode > EL_SKILLMODE_AGGRESSIVE) {
			ShowError("read_elemental_skilldb : Skillmode fora da faixa, linha %d.\n", k);
			continue;
		}

		ARR_FIND(0, MAX_ELESKILLTREE, i, db->skill[i].id == 0 || db->skill[i].id == skill_id);
		if(i == MAX_ELESKILLTREE) {
			ShowWarning("Nao foi possivel carregar �arvore de habilidade %d em Elemental %d's. O numero maximo de habilidades por elemental foi atingido.\n", skill_id, class_);
			continue;
		}

		db->skill[i].id = skill_id;
		db->skill[i].lv = skill_lv;
		db->skill[i].mode = skillmode;
		j++;
	}

	ShowSQL("Leitura de '"CL_WHITE"%d"CL_RESET"' entradas na tabela '"CL_WHITE"%s"CL_RESET"'.\n", j, get_database_name(15));
	SQL->FreeResult(map->brAmysql_handle);
	return 0;
}

void reload_elementaldb(void) {
	elemental->read_db();
	elemental->reload_skilldb();
}

void reload_elemental_skilldb(void) {
	elemental->read_skilldb();
}

int do_init_elemental(bool minimal) {
	if (minimal)
		return 0;

	elemental->read_db();
	elemental->read_skilldb();

	timer->add_func_list(elemental->ai_timer,"elemental_ai_timer");
	timer->add_interval(timer->gettick()+MIN_ELETHINKTIME,elemental->ai_timer,0,0,MIN_ELETHINKTIME);

	return 0;
}

void do_final_elemental(void) {
	return;
}

/*=====================================
* Default Functions : elemental.h
* Generated by HerculesInterfaceMaker
* created by Susu
*-------------------------------------*/
void elemental_defaults(void) {
	elemental = &elemental_s;

	/* */
	elemental->init = do_init_elemental;
	elemental->final = do_final_elemental;

	/* */
	memset(elemental->db,0,sizeof(elemental->db));

	/* funcs */
	elemental->class = elemental_class;
	elemental->get_viewdata = elemental_get_viewdata;

	elemental->create = elemental_create;
	elemental->data_received = elemental_data_received;
	elemental->save = elemental_save;

	elemental->change_mode_ack = elemental_change_mode_ack;
	elemental->change_mode = elemental_change_mode;

	elemental->heal = elemental_heal;
	elemental->dead = elemental_dead;

	elemental->delete = elemental_delete;
	elemental->summon_stop = elemental_summon_stop;

	elemental->get_lifetime = elemental_get_lifetime;

	elemental->unlocktarget = elemental_unlocktarget;
	elemental->skillnotok = elemental_skillnotok;
	elemental->set_target = elemental_set_target;
	elemental->clean_single_effect = elemental_clean_single_effect;
	elemental->clean_effect = elemental_clean_effect;
	elemental->action = elemental_action;
	elemental->skill_get_requirements = elemental_skill_get_requirements;

	elemental->read_skilldb = read_elemental_skilldb;
	elemental->reload_db = reload_elementaldb;
	elemental->reload_skilldb = reload_elemental_skilldb;

	elemental->search_index = elemental_search_index;
	elemental->summon_init = elemental_summon_init;
	elemental->summon_end_timer = elemental_summon_end_timer;
	elemental->ai_sub_timer_activesearch = elemental_ai_sub_timer_activesearch;
	elemental->ai_sub_timer = elemental_ai_sub_timer;
	elemental->ai_sub_foreachclient = elemental_ai_sub_foreachclient;
	elemental->ai_timer = elemental_ai_timer;
	elemental->read_db = read_elementaldb;
}
