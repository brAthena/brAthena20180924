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

struct macban_interface
{

    void (*init) (void);
    void (*final) (void);

    bool (*config_read) (const char*, const char*);

    bool (*check) (const char*);
    void (*log) (const char*);
    void (*ban) (const char*, int);
    void (*unban) (const char*);
    void (*block) (const char*);

};

void macban_do_init(void);

struct macban_interface* macban;

#endif // BRATHENA_CORE

#endif /* LOGIN_MACBAN_H */
