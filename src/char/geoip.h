/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/char/geopip.h                                                          *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
* Copyright (c) Hercules Dev Team                                            *
* Copyright (c) Athena Dev Teams                                             *
*                                                                            *
* Licenciado sob a licenca GNU GPL                                           *
* Para mais informações leia o arquivo LICENSE na raíz do emulador           *
*****************************************************************************/

#ifndef CHAR_GEOIP_H
#define CHAR_GEOIP_H

#include "common/cbasetypes.h"

/**
 * GeoIP information
 **/
struct s_geoip {
	unsigned char *cache; // GeoIP.dat information see geoip->init()
	bool active;
};


/**
 * geoip interface
 **/
struct geoip_interface {
	struct s_geoip *data;
	const char* (*getcountry) (uint32 ipnum);
	void (*final) (bool shutdown);
	void (*init) (void);
};

struct geoip_interface *geoip;

#ifdef BRATHENA_CORE
void geoip_defaults(void);
#endif // BRATHENA_CORE

#endif /* CHAR_GEOIP_H */
