/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
******************************************************************************
*                          www.brathena.org                                  *
*****************************************************************************/

#ifndef LOGIN_LOGINLOG_H
#define LOGIN_LOGINLOG_H

#include "common/cbasetypes.h"

#ifdef BRATHENA_CORE
// TODO: Interface
unsigned long loginlog_failedattempts(uint32 ip, unsigned int minutes);
void login_log(uint32 ip, const char* username, int rcode, const char* message);
bool loginlog_init(void);
bool loginlog_final(void);
bool loginlog_config_read(const char* w1, const char* w2);
#endif // BRATHENA_CORE

#endif /* LOGIN_LOGINLOG_H */
