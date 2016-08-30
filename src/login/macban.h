/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/login/macban.h                                                          *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
*                                                                            *
* Licenciado sob a licenca GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#ifndef LOGIN_MACBAN_H
#define LOGIN_MACBAN_H

#include "common/cbasetypes.h"

#ifdef BRATHENA_CORE

void macban_init(void);
void macban_final(void);
bool macban_config_read(const char*, const char*);
bool macban_check(const char*);
void macban_log(const char*);
void macban_ban(const char*, int);
void macban_unban(const char*);
void macban_block(const char*);

#endif // BRATHENA_CORE

#endif /* LOGIN_MACBAN_H */
