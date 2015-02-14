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
void sv_readsqldb(char *table_name, char *name, int param_size, int max_allowed, bool (*sub_parse_row)(char *string[], int columns, int current))
{
	const char *db_name[] = { table_name, name };
	int8 i;
	uint8 lines = 0;
	uint16 count = 0;
	for(i = 0; i < 2; ++i) {
		if(db_name[i] == NULL) {
			if(i != 1)
				continue;
			else
				break;
		}
		
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
}

char *get_database_name(int database_id)
{
	char *db_name = NULL;

	switch(database_id) {
		case 0: db_name = "skill_db"; break;
		case 1: db_name = "skill_require_db"; break;
		case 2: db_name = "skill_cast_db"; break;
		case 3: db_name = "skill_castnodex_db"; break;
		case 4: db_name = "skill_unit_db"; break;
		//case 5: livre
		case 6: db_name = "produce_db"; break;
		case 7: db_name = "create_arrow_db"; break;
		case 8: db_name = "abra_db"; break;
	#ifdef RENEWAL
		case 9: db_name = "spellbook_db"; break;
		case 10: db_name = "magicmushroom_db"; break;
		case 11: db_name = "skill_reproduce_db"; break;
		case 12: db_name = "skill_improvise_db"; break;
		case 13: db_name = "skill_changematerial_db"; break;
	#endif
	}

	return db_name;
}
