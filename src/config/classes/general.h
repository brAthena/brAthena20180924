/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/config/classes/general.h                                               *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licença GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#ifndef CONFIG_GENERAL_H
#define CONFIG_GENERAL_H

/**
 * Hercules configuration file (http://herc.ws)
 **/

/**
 * Default Magical Reflection Behavior
 * - When reflecting, reflected damage depends on gears caster is wearing, not target (official)
 * - When disabled damage depends on gears target is wearing, not caster. (old/eathena)
 * @values 1 (enabled) or 0 (disabled)
 **/
#define MAGIC_REFLECTION_TYPE 1

/**
 * Spirit Sphere Limitation
 **/
#define MAX_SPIRITBALL 15

/**
* Spirit Charm Limitation
**/
#define MAX_SPIRITCHARM 10

/**
 * No settings past this point
 **/

#endif // CONFIG_GENERAL_H
