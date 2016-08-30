/****************************************************************************!
*                _           _   _   _                                       *
*               | |__  _ __ / \ | |_| |__   ___ _ __   __ _                  *
*               | '_ \| '__/ _ \| __| '_ \ / _ \ '_ \ / _` |                 *
*               | |_) | | / ___ \ |_| | | |  __/ | | | (_| |                 *
*               |_.__/|_|/_/   \_\__|_| |_|\___|_| |_|\__,_|                 *
*                                                                            *
*                            www.brathena.org                                *
******************************************************************************
* src/login/mac.c                                                         *
******************************************************************************
* Copyright (c) brAthena Dev Team                                            *
*                                                                            *
* Licenciado sob a licenca GNU GPL                                           *
* Para mais informa��es leia o arquivo LICENSE na ra�z do emulador           *
*****************************************************************************/

#define BRATHENA_CORE

#include "mac.h"
#include "login.h"

#include "common/cbasetypes.h"
#include "common/nullpo.h"
#include "common/sql.h"
#include "common/strlib.h"
#include "common/timer.h"
#include "common/db.h"

#include <stdlib.h>

// // global sql settings
// static char   global_db_hostname[32] = "127.0.0.1";
// static uint16 global_db_port = 3306;
// static char   global_db_username[32] = "ragnarok";
// static char   global_db_password[100] = "ragnarok";
// static char   global_db_database[32] = "ragnarok";
// static char   global_codepage[32] = "";
// // local sql settings
// static char   macban_db_hostname[32] = "";
// static uint16 macban_db_port = 0;
// static char   macban_db_username[32] = "";
// static char   macban_db_password[100] = "";
// static char   macban_db_database[32] = "";
// static char   macban_codepage[32] = "";
// static char   macban_table_list[32] = "macban_list";
// static char   macban_table_log[32] = "macban_log";

// // globals
// static Sql* sql_handle = NULL;
// static int cleanup_timer_id = INVALID_TIMER;
// static bool mac_inited = false;

struct mac_interface mac_s;

/**
 * Inicializa comunicação com o banco de dados.
 */
void mac_init(void)
{
    // Inicializa o banco de dados para os endereços mac-online.
    mac->onlinedb = stridb_alloc(DB_OPT_RELEASE_DATA, MAC_LENGTH);

    return;
}

/**
 * Finaliza informações e dados de estrutura relacionados aos endereços mac.
 */
void mac_final(void)
{

    // Destroi as informações dos macs logados.
    mac->onlinedb->destroy(mac->onlinedb, NULL);

    return;
}

/**
 * Realiza a leitura de configurações relacionadas ao mac_address
 *
 * @param key
 * @param value
 *
 * @return boolean retorna verdadeiro se a leitura foi realizada corretamente.
 */
bool mac_config_read(const char* key, const char* value)
{
    return false;
}

void mac_doinit(void)
{
    mac = &mac_s;

    // Funções de inicialização de dados do MAC.
    mac->init           = mac_init;
    mac->final          = mac_final;
    mac->config_read    = mac_config_read;

    // Funções de verificação de dados do MAC.

    // Funções de verificação de dados de MAC Banidos.


    // Inicializa os dados e informações de banidos e tratamentos de mac_address
    mac->init();
    return;
}

