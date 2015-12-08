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

#define BRATHENA_CORE

#include "date.h"
#include "common/cbasetypes.h"
#include <time.h>

int date_get_day(void) {
 	time_t t = time(0); 
    struct tm * now = localtime(& t);
    return now->tm_mday;
}

/*==========================================
 * Star gladiator related checks
 *------------------------------------------*/

bool is_day_of_sun(void) {
	return date_get_day()%2 == 0;
}

bool is_day_of_moon(void) {
	return date_get_day()%2 == 1;
}

bool is_day_of_star(void) {
	return date_get_day()%5 == 0;
}
