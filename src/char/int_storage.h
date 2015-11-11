/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/char/int_storage.h                                                     *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licenca GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#ifndef CHAR_INT_STORAGE_H
#define CHAR_INT_STORAGE_H

struct storage_data;
struct guild_storage;

#ifdef BRATHENA_CORE
void inter_storage_defaults(void);
#endif // BRATHENA_CORE

/**
 * inter_storage interface
 **/
struct inter_storage_interface {
	int (*tosql) (int account_id, struct storage_data* p);
	int (*fromsql) (int account_id, struct storage_data* p);
	int (*guild_storage_tosql) (int guild_id, struct guild_storage* p);
	int (*guild_storage_fromsql) (int guild_id, struct guild_storage* p);
	int (*sql_init) (void);
	void (*sql_final) (void);
	int (*delete_) (int account_id);
	int (*guild_storage_delete) (int guild_id);
	int (*parse_frommap) (int fd);
};

struct inter_storage_interface *inter_storage;

#endif /* CHAR_INT_STORAGE_H */
