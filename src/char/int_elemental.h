/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/char/int_elemental.h                                                   *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licenca GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#ifndef CHAR_INT_ELEMENTAL_H
#define CHAR_INT_ELEMENTAL_H

#include "common/cbasetypes.h"

#ifdef BRATHENA_CORE
void inter_elemental_defaults(void);
#endif // BRATHENA_CORE

/**
 * inter_elemental_interface interface
 **/
struct inter_elemental_interface {
	void (*sql_init) (void);
	void (*sql_final) (void);
	int (*parse_frommap) (int fd);
};

struct inter_elemental_interface *inter_elemental;

#endif /* CHAR_INT_ELEMENTAL_H */
