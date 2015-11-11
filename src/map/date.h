/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/map/date.h                                                             *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licença GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#ifndef MAP_DATE_H
#define MAP_DATE_H

#include "common/cbasetypes.h"

#ifdef BRATHENA_CORE
// TODO: Interface
int date_get_year(void);
int date_get_month(void);
int date_get_day(void);
int date_get_hour(void);
int date_get_min(void);
int date_get_sec(void);

bool is_day_of_sun(void);
bool is_day_of_moon(void);
bool is_day_of_star(void);
#endif // BRATHENA_CORE

#endif /* MAP_DATE_H */
