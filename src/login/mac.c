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
#include "common/utils.h"
#include "common/showmsg.h"
#include "common/memmgr.h"

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
static bool mac_inited = false;

struct mac_interface mac_s;

/**
 * Procura um mac_address na lista online.
 */
int mac_is_online_sub(DBKey key, DBData *data, va_list args)
{
    const char* mac_address = (const char*) va_arg(args, const char*);
    struct mac_node* node = DB->data2ptr(data);

    if(!strcmp(mac_address, node->mac_address))
        return 1;

    return 0;
}

/**
 * Verifica se um mac_address está online na lista.
 *
 * @param mac_address
 */
bool mac_is_online(const char* mac_address)
{
    if(strlen(mac_address) == 0)
        return false;

    return (mac->onlinedb->foreach(mac->onlinedb, mac->is_online_sub, mac_address) == 1);
}

/**
 * Adiciona o mac_address a lista de onlines.
 *
 * @param account_id
 * @param mac_address
 */
void mac_add_online(int account_id, const char* mac_address)
{
    struct mac_node* node;

    if(strlen(mac_address) == 0)
        return;

    if(mac->is_online(mac_address))
        ShowWarning("O MAC \"%s\" já está online.\n", mac_address);

    ShowInfo("Adicionando (%d, %s) a lista online...\n", account_id, mac_address);

    CREATE(node, struct mac_node, 1);
    node->account_id = account_id;
    safestrncpy(node->mac_address, mac_address, MAC_LENGTH);

    idb_put(mac->onlinedb, account_id, node);
    return;
}

/**
 * Deleta a conta online e remove o registro do mac_address
 */
void mac_del_online(int account_id)
{
    if(!idb_exists(mac->onlinedb, account_id))
        return;

    ShowInfo("Removendo (%d) da lista online...\n", account_id);

    idb_remove(mac->onlinedb, account_id);
    return;
}

/**
 * Inicializa comunicação com o banco de dados.
 */
void mac_init(void)
{
    // Inicializa o banco de dados para os endereços mac-online.
    mac->onlinedb = idb_alloc(DB_OPT_RELEASE_DATA);
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
    const char* signature;

    nullpo_ret(key);
    nullpo_ret(value);
    if(mac_inited)
        return false;

    signature = "mac.";
    if( strncmpi(key, signature, strlen(signature)) == 0 )
    {
        key += strlen(signature);
        if(strcmpi(key, "block_dual") == 0)
            login->config->mac_block_dual = (bool)config_switch(value);
        else
            return false;

        return true;
    }

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
    mac->is_online      = mac_is_online;
    mac->is_online_sub  = mac_is_online_sub;
    mac->add_online     = mac_add_online;
    mac->del_online     = mac_del_online;

    // Funções de verificação de dados de MAC Banidos.


    // Inicializa os dados e informações de banidos e tratamentos de mac_address
    mac->init();
    return;
}

