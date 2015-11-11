/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/char/int_auction.h                                                     *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licenca GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#ifndef CHAR_INT_AUCTION_H
#define CHAR_INT_AUCTION_H

#include "common/db.h"
#include "common/mmo.h"

#ifdef BRATHENA_CORE
void inter_auction_defaults(void);
#endif // BRATHENA_CORE

/**
 * inter_auction_interface interface
 **/
struct inter_auction_interface {
	DBMap* db; // int auction_id -> struct auction_data*
	int (*count) (int char_id, bool buy);
	void (*save) (struct auction_data *auction);
	unsigned int (*create) (struct auction_data *auction);
	int (*end_timer) (int tid, int64 tick, int id, intptr_t data);
	void (*delete_) (struct auction_data *auction);
	void (*fromsql) (void);
	int (*parse_frommap) (int fd);
	int (*sql_init) (void);
	void (*sql_final) (void);
};

struct inter_auction_interface *inter_auction;

#endif /* CHAR_INT_AUCTION_H */
