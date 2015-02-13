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

int brAdb_sql_init(void)
{
	map->brAmysql_handle = SQL->Malloc();

	ShowInfo("Conectando com o banco de dados geral....\n");

	if(SQL_ERROR == SQL->Connect(map->brAmysql_handle, map->brAdb_id, map->brAdb_pw, map->brAdb_ip, map->brAdb_port, map->brA_dbname))
		exit(EXIT_FAILURE);

	ShowStatus("Conexao efetuada com sucesso no banco de dados '"CL_WHITE"%s"CL_RESET"'.\n", map->brA_dbname);
	return 0;
}