int brAmap_sql_close(void)
{
	ShowStatus("Fechando conexao com a database geral....\n");
	SQL->Free(map->brAmysql_handle);
	map->brAmysql_handle = NULL;
	if (logs->config.sql_logs) {
		logs->sql_final();
	}
	return 0;
}