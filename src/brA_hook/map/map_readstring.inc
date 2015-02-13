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

		else if(strcmpi(w1,"brAdb_ip")==0)
			safestrncpy(map->brAdb_ip, w2, sizeof(map->brAdb_ip));
		else if(strcmpi(w1,"brAdb_port")==0)
			map->brAdb_port=atoi(w2);
		else if(strcmpi(w1,"brAdb_id")==0)
			safestrncpy(map->brAdb_id, w2, sizeof(map->brAdb_id));
		else if(strcmpi(w1,"brAdb_pw")==0)
			safestrncpy(map->brAdb_pw, w2, sizeof(map->brAdb_pw));
		else if(strcmpi(w1,"brAdb_name")==0)
			safestrncpy(map->brA_dbname, w2, sizeof(map->brA_dbname));