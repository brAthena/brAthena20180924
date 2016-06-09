/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/login/loginlog.h                                                       *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licenca GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#ifndef LOGIN_LOGINLOG_H
#define LOGIN_LOGINLOG_H

#include "common/cbasetypes.h"

#ifdef BRATHENA_CORE
// TODO: Interface
unsigned long loginlog_failedattempts(uint32 ip, unsigned int minutes);
// [CarlosHenrq] Enviando mac_address no pacote entre os servidores.
void login_log(uint32 ip, const char* username, int rcode, const char* message, const char* mac_address);
bool loginlog_init(void);
bool loginlog_final(void);
bool loginlog_config_read(const char* w1, const char* w2);
#endif // BRATHENA_CORE

#endif /* LOGIN_LOGINLOG_H */
