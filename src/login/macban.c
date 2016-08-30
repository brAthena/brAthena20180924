/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/login/macban.c                                                         *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
*                                                                            *
* Licenciado sob a licenca GNU GPL                                           *
* Para mais informa��es leia o arquivo LICENSE na ra�z do emulador           *
*****************************************************************************/

#define BRATHENA_CORE

#include "macban.h"

#include "common/cbasetypes.h"
#include "common/nullpo.h"
#include "common/sql.h"
#include "common/strlib.h"
#include "common/timer.h"

#include <stdlib.h>

// global sql settings
static char   global_db_hostname[32] = "127.0.0.1";
static uint16 global_db_port = 3306;
static char   global_db_username[32] = "ragnarok";
static char   global_db_password[100] = "ragnarok";
static char   global_db_database[32] = "ragnarok";
static char   global_codepage[32] = "";
// local sql settings
static char   macban_db_hostname[32] = "";
static uint16 macban_db_port = 0;
static char   macban_db_username[32] = "";
static char   macban_db_password[100] = "";
static char   macban_db_database[32] = "";
static char   macban_codepage[32] = "";
static char   macban_table_list[32] = "macban_list";
static char   macban_table_log[32] = "macban_log";

// globals
static Sql* sql_handle = NULL;
static int cleanup_timer_id = INVALID_TIMER;
static bool macban_inited = false;

struct macban_interface macban_s;


/**
 * Método para inicializar conexão com banco de dados e configurações iniciais.
 */
void macban_init(void)
{
	// @Todo

	macban_inited = true;
	return;
}

/**
 * Finaliza as instruções do macban
 */
void macban_final(void)
{
	return;
}

/**
 * Método para realizar a leitura de configurações para o macban.
 */
bool macban_config_read(const char* key, const char* value)
{
	// @Todo
	return false;
}

/**
 * Método para verificar se o endereço mac foi banido.
 *
 * @param mac_address
 *
 * @return bool Verdadeiro se foi banido.
 */
bool macban_check(const char* mac_address)
{
	// @Todo
	return false;
}

/**
 * Cria um registro na tabela de logs informando que o mac foi negado.
 *
 * @param mac_address
 */
void macban_log(const char* mac_address)
{
	// @Todo
	return;
}

/**
 * Adiciona um endereço mac na lista de banidos.
 *
 * @param mac_address
 */
void macban_ban(const char* mac_address, int minutes)
{
	// @Todo
	return;
}

/**
 * Remove um mac da lista de banidos.
 *
 * @param mac_address
 */
void macban_unban(const char* mac_address)
{
	return;
}

/**
 * Bloqueia um mac_address
 *
 * @param mac_address
 */
void macban_block(const char* mac_address)
{
	macban->ban(mac_address, -1);
}

/**
 * Iniciliza os ponteiros de funções para banimento por mac_address
 */
void macban_do_init(void)
{
	macban = &macban_s;

	// Funções de inicialização do macban.
	macban->init 			= macban_init;
	macban->final 			= macban_final;
	macban->config_read 	= macban_config_read;
	macban->check 			= macban_check;
	macban->log 			= macban_log;
	macban->ban 			= macban_ban;
	macban->unban 			= macban_unban;
	macban->block 			= macban_block;

	// Inicializa macban
	macban->init();

	return;
}
