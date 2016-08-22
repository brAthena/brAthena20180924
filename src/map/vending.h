/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/map/vending.h                                                          *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licença GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#ifndef MAP_VENDING_H
#define MAP_VENDING_H

#include "map/map.h" // struct block_list, CHATROOM_TITLE_SIZE
#include "common/cbasetypes.h"
#include "common/db.h"

struct map_session_data;
struct s_search_store_search;

struct s_vending {
	short index; //cart index (return item data)
	short amount; //amount of the item for vending
	unsigned int value; //at which price
};

struct vending_interface {
	unsigned int next_id;/* next vender id */
	DBMap *db;
	/* */
	void (*init) (bool minimal);
	void (*final) (void);
	/* */
	void (*close) (struct map_session_data* sd);
	void (*open) (struct map_session_data* sd, const char* message, const uint8* data, int count);
	void (*list) (struct map_session_data* sd, unsigned int id);
	void (*purchase) (struct map_session_data* sd, int aid, unsigned int uid, const uint8* data, int count);
	bool (*search) (struct map_session_data* sd, unsigned short nameid);
	bool (*searchall) (struct map_session_data* sd, const struct s_search_store_search* s);

	// Testes para contagem de vendas [CarlosHenrq]
	int (*count_sub) (struct block_list *bl,va_list ap);
	int (*count_map) (int16 m);
	int (*count_area) (int16 m, int16 x0, int16 y0, int16 x1, int16 y1);
	int (*count_cell) (int16 m, int16 x, int16 y);
	int (*count_range) (struct block_list* bl, int range);

	// Verifica se a celula já possui venda em aberto.
	bool (*cell_has_taken) (struct map_session_data* sd);
};

struct vending_interface *vending;

#ifdef BRATHENA_CORE
void vending_defaults(void);
#endif // BRATHENA_CORE

#endif /* MAP_VENDING_H */
