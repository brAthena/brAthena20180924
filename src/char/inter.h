/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/char/inter.h                                                           *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licenca GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#ifndef CHAR_INTER_H
#define CHAR_INTER_H

#include "common/cbasetypes.h"
#include "common/db.h"
#include "common/sql.h"

#include <stdarg.h>

struct accreg;

#ifdef BRATHENA_CORE
extern unsigned int party_share_level;

extern char tmp_db_name[32];

void inter_defaults(void);
#endif // BRATHENA_CORE

/**
 * inter interface
 **/
struct inter_interface {
	Sql* sql_handle;
	const char* (*msg_txt) (int msg_number);
	bool (*msg_config_read) (const char *cfg_name, bool allow_override);
	void (*do_final_msg) (void);
	const char* (*job_name) (int class_);
	void (*vmsg_to_fd) (int fd, int u_fd, int aid, char* msg, va_list ap);
	void (*msg_to_fd) (int fd, int u_fd, int aid, char *msg, ...);
	void (*savereg) (int account_id, int char_id, const char *key, unsigned int index, intptr_t val, bool is_string);
	int (*accreg_fromsql) (int account_id,int char_id, int fd, int type);
	int (*config_read) (const char* cfgName);
	int (*vlog) (char* fmt, va_list ap);
	int (*log) (char* fmt, ...);
	int (*init_sql) (const char *file);
	int (*mapif_init) (int fd);
	int (*check_ttl_wisdata_sub) (DBKey key, DBData *data, va_list ap);
	int (*check_ttl_wisdata) (void);
	int (*check_length) (int fd, int length);
	int (*parse_frommap) (int fd);
	void (*final) (void);
};

struct inter_interface *inter;

#endif /* CHAR_INTER_H */
