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

/**
 * brAthena Parser v2.0
 * Função destinada a leitura de várias tabelas da database de itens, habilidades, monstros e etc.
 **/
void sv_readsqldb(char *table_name, int param_size, int max_allowed, bool (*sub_parse_row)(char *string[], int columns, int current))
{
	uint8 lines = 0;
	uint16 count = 0;
	
	if(SQL_ERROR == SQL->Query(map->brAmysql_handle, "SELECT * FROM `%s`", table_name)) {
		Sql_ShowDebug(map->brAmysql_handle);
		return;
	}
	
	while (SQL_SUCCESS == SQL->NextRow(map->brAmysql_handle)) {
		char *str[100];
		int8 j;
		++lines;

		if(count == max_allowed) {
			ShowError("sv_readsqldb: Ultrapassado o limite de entradas (%d) na tabela \"%s\".\n", max_allowed, table_name);
			break;
		}

		str[(param_size + 1)] = '\0';
		for(j = 0; j < param_size; ++j) {
			SQL->GetData(map->brAmysql_handle, j, &str[j], NULL);
			if(str[j] == NULL)
				str[j] = "";
		}

		if(!sub_parse_row(str, param_size, count))
			continue;
		count++;
	}

	ShowSQL("Leitura de '"CL_WHITE"%lu"CL_RESET"' entradas na tabela '"CL_WHITE"%s"CL_RESET"'.\n", count, table_name);
	SQL->FreeResult(map->brAmysql_handle);
}