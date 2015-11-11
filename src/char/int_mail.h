/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/char/int_mail.                                                         *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licenca GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#ifndef CHAR_INT_MAIL_H
#define CHAR_INT_MAIL_H

#include "common/cbasetypes.h"

struct item;
struct mail_data;
struct mail_message;

#ifdef BRATHENA_CORE
void inter_mail_defaults(void);
#endif // BRATHENA_CORE

/**
 * inter_mail interface
 **/
struct inter_mail_interface {
	int (*sql_init) (void);
	void (*sql_final) (void);
	int (*parse_frommap) (int fd);
	int (*fromsql) (int char_id, struct mail_data* md);
	int (*savemessage) (struct mail_message* msg);
	bool (*loadmessage) (int mail_id, struct mail_message* msg);
	bool (*DeleteAttach) (int mail_id);
	void (*sendmail) (int send_id, const char* send_name, int dest_id, const char* dest_name, const char* title, const char* body, int zeny, struct item *item);
};

struct inter_mail_interface *inter_mail;

#endif /* CHAR_INT_MAIL_H */
