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

// global sql settings
static char   global_db_hostname[32] = "127.0.0.1";
static uint16 global_db_port = 3306;
static char   global_db_username[32] = "ragnarok";
static char   global_db_password[100] = "ragnarok";
static char   global_db_database[32] = "ragnarok";
static char   global_codepage[32] = "";
// local sql settings
static char   mac_db_hostname[32] = "";
static uint16 mac_db_port = 0;
static char   mac_db_username[32] = "";
static char   mac_db_password[100] = "";
static char   mac_db_database[32] = "";
static char   mac_codepage[32] = "";
static char   mac_table_list[32] = "macban_list";
static char   mac_table_log[32] = "macban_log";

// globals
static Sql* sql_handle = NULL;
static int cleanup_timer_id = INVALID_TIMER;
static bool mac_inited = false;
// static int mac_ban_id = 0;

struct mac_interface mac_s;

/**
 * Procura um mac_address na lista online.
 */
int mac_is_online_sub(DBKey key, DBData *data, va_list args)
{
    const char* mac_address = (const char*) va_arg(args, const char*);
    struct mac_node* node = DB->data2ptr(data);

    return (strcmp(mac_address, node->mac_address) == 0);
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
        ShowWarning("O MAC '"CL_WHITE"%s"CL_RESET"' já está online.\n", mac_address);

    ShowNotice("Adicionando ('"CL_WHITE"%d"CL_RESET"', '"CL_WHITE"%s"CL_RESET"') a lista online.\n", account_id, mac_address);

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

    ShowNotice("Removendo '"CL_WHITE"%d"CL_RESET"' da lista online...\n", account_id);

    idb_remove(mac->onlinedb, account_id);
    return;
}

/**
 * Inicializa comunicação com o banco de dados.
 */
void mac_init(void)
{
    const char* username;
    const char* password;
    const char* hostname;
    uint16      port;
    const char* database;
    const char* codepage;

	if(mac_inited)
		return;

    // Inicializa o banco de dados para os endereços mac-online.
    mac->onlinedb = idb_alloc(DB_OPT_RELEASE_DATA);

    mac_inited = true;

    if(!login->config->mac_ban_enable)
        return;

    // Inicializa o banco de dados para os endereços mac banidos.
    mac->banneddb = idb_alloc(DB_OPT_RELEASE_DATA);

    if( mac_db_hostname[0] != '\0' )
    {// local settings
        username = mac_db_username;
        password = mac_db_password;
        hostname = mac_db_hostname;
        port     = mac_db_port;
        database = mac_db_database;
        codepage = mac_codepage;
    }
    else
    {// global settings
        username = global_db_username;
        password = global_db_password;
        hostname = global_db_hostname;
        port     = global_db_port;
        database = global_db_database;
        codepage = global_codepage;
    }

    // Inicializa a conexão com o banco de dados.
    sql_handle = SQL->Malloc();
    if(SQL_ERROR == SQL->Connect(sql_handle, username, password, hostname, port, database))
    {
        Sql_ShowDebug(sql_handle);
        SQL->Free(sql_handle);
        exit(EXIT_FAILURE);
    }

    if(codepage[0] != '\0' && SQL_ERROR == SQL->SetEncoding(sql_handle, codepage))
        Sql_ShowDebug(sql_handle);

    // Carrega a lista de banidos do banco de dados.
    mac->ban_list_load();

    // Atualiza informações de macs banidos a cada 10s.
    timer->add_func_list(mac->unban_cleanup, "mac_unban_cleanup");
    cleanup_timer_id = timer->add_interval(timer->gettick() + 1000, mac->unban_cleanup, 0, 0, 10000);

    return;
}

/**
 * Carrega toda a lista de mac_address banidos do banco de dados.
 */
void mac_ban_list_load()
{
    int count = 0;

    if(!login->config->mac_ban_enable)
        return;

    // Realiza um SELECT para obter todos os MAC_ADDRESS banidos.
    if(SQL_ERROR == SQL->Query(sql_handle, "SELECT id, mac_address, ban_tick, unban_tick, reason, banned "
                                            "FROM `%s` WHERE banned = true", mac_table_list))
    {
        Sql_ShowDebug(sql_handle);
        return;
    }

    // Varre todos os itens retornados do SELECT.
    for(count = 0; SQL_SUCCESS == SQL->NextRow(sql_handle) ; count++)
    {
        struct mac_ban_node* node;
        char* data = NULL;
        CREATE(node, struct mac_ban_node, 1);
        
        SQL->GetData(sql_handle, 0, &data, NULL); node->id = atoi(data);
        SQL->GetData(sql_handle, 1, &data, NULL); safestrncpy(node->mac_address, data, MAC_LENGTH);
        SQL->GetData(sql_handle, 2, &data, NULL); node->ban_tick = atol(data);
        SQL->GetData(sql_handle, 3, &data, NULL); node->unban_tick = atol(data);
        SQL->GetData(sql_handle, 4, &data, NULL); safestrncpy(node->reason, data, sizeof(node->reason));
        SQL->GetData(sql_handle, 5, &data, NULL); node->banned = (bool)atoi(data);

        idb_put(mac->banneddb, node->id, node);
    }
    SQL->FreeResult(sql_handle);

    ShowNotice("Foram carregados '"CL_WHITE"%d"CL_RESET"' enderecos MAC banidos.\n", count);
    return;
}

/**
 * Verifica se o mac_address informado está na lista de banidos.
 */
int mac_ban_check_sub(DBKey key, DBData *data, va_list args)
{
    const char* mac_address = (const char*) va_arg(args, const char*);
    struct mac_ban_node* node = DB->data2ptr(data);

    return (strcmpi(node->mac_address, mac_address) == 0);
}

/**
 * Verifica se o endereço mac está banido.
 *
 * @param mac_address
 *
 * @return boolean Retorna verdadeiro se o mac estiver banido.
 */
bool mac_ban_check(const char* mac_address)
{
    if(!login->config->mac_ban_enable)
        return false;

    return (mac->banneddb->foreach(mac->banneddb, mac->ban_check_sub, mac_address) > 0);
}

/**
 * Procura o mac e retorna o tempo pelo parametro.
 */
static int mac_ban_end_sub(DBKey key, DBData *data, va_list args)
{
    const char* mac_address = (const char*) va_arg(args, const char*);
    int64* unban_tick = (int64*) va_arg(args, int64*);

    struct mac_ban_node* node = DB->data2ptr(data);

    if(!strcmpi(node->mac_address, mac_address))
    {
        *unban_tick = node->unban_tick;
        return 1;
    }


    return 0;
}

/**
 * Obtém o fim do ban.
 *
 * @param mac_address
 *
 * @return int64
 */
int64 mac_ban_end(const char* mac_address)
{
    int64 unban_tick = 0;

    if(mac->banneddb->foreach(mac->banneddb, mac_ban_end_sub, mac_address, &unban_tick))
        return unban_tick;

    return 0;
}

/**
 * Adiciona um mac_address a lista de banidos.
 *
 * @param mac_address
 * @param reason
 * @param minutes
 */
void mac_ban(const char* mac_address, const char* reason, int minutes, bool save)
{
    int64 ban_tick, unban_tick = 0;
    struct mac_ban_node* node = NULL;
    int id = -1;
    // char* data = NULL;

    if(!login->config->mac_ban_enable)
        return;

    ban_tick = timer->gettick();

    if(minutes > 0)
        unban_tick = ban_tick + ((minutes * 60) * 1000);

    // Este é um ban que deve ser salvo no banco de dados.
    // Normalmente bans temporarios do login estarão como save = false -> Serão limpos assim que o login for reiniciado
    if(save)
    {
        SqlStmt* stmt = SQL->StmtMalloc(sql_handle);

        if(stmt == NULL)
        {
            SqlStmt_ShowDebug(stmt);
            return;
        }

        // Grava o ban no banco de dados.
        if(SQL_ERROR == SQL->StmtPrepare(stmt, "INSERT INTO `%s` "
                                                "VALUES (NULL, ?, ?, ?, ?, true)", mac_table_list)
            || SQL_ERROR == SQL->StmtBindParam(stmt,    0, SQLDT_STRING,    (void*)mac_address,     strlen(mac_address))
            || SQL_ERROR == SQL->StmtBindParam(stmt,    1, SQLDT_LONG,      (void*)&ban_tick,       sizeof(ban_tick))
            || SQL_ERROR == SQL->StmtBindParam(stmt,    2, SQLDT_LONG,      (void*)&unban_tick,     sizeof(unban_tick))
            || SQL_ERROR == SQL->StmtBindParam(stmt,    3, SQLDT_STRING,    (void*)reason,          strlen(reason))
            || SQL_ERROR == SQL->StmtExecute(stmt))
        {
            SqlStmt_ShowDebug(stmt);
            return;
        }

        SQL->StmtFree(stmt);

        // Obtém id do banco de dados.
        id = (int)SQL->LastInsertId(sql_handle);
    }

    // Informa que o ban aplicado foi permanente
    if(unban_tick == -1)
        ShowNotice("O MAC '"CL_WHITE"%s"CL_RESET"' foi banido permanentemente.\n", mac_address);
    else
        ShowNotice("O MAC '"CL_WHITE"%s"CL_RESET"' foi banido por '"CL_WHITE"%d"CL_RESET"' minuto(s).\n",
            mac_address, minutes);

    CREATE(node, struct mac_ban_node, 1);
    node->id = id;
    safestrncpy(node->mac_address, mac_address, MAC_LENGTH);
    node->ban_tick = ban_tick;
    node->unban_tick = unban_tick;
    safestrncpy(node->reason, reason, strlen(node->reason));
    node->banned = true;

    idb_put(mac->banneddb, id, node);
    return;
}

/**
 * Adiciona o mac_address aos bans permanentes.
 */
void mac_ban_permanent(const char* mac_address, const char* reason)
{
    mac->ban(mac_address, reason, 0, true);
    return;
}

/**
 * Remove o ban do mac_address por id.
 *
 * @param id
 */
void mac_unban(int id)
{
    struct mac_ban_node* node = NULL;

    if(!login->config->mac_ban_enable)
        return;

    // Se o id existir no banco em memória, então
    //  remove da memória e marca o banco de dados
    if(idb_exists(mac->banneddb, id))
    {
        node = (struct mac_ban_node*) idb_get(mac->banneddb, id);
        ShowNotice("O MAC '"CL_WHITE"%s"CL_RESET"' foi removido da lista de banidos.\n", node->mac_address);
        idb_remove(mac->banneddb, id);
    }

    if(SQL_ERROR == SQL->Query(sql_handle, "UPDATE `%s` SET banned = false WHERE `id` = %d", mac_table_list, id))
        Sql_ShowDebug(sql_handle);

    return;
}

/**
 * Procura o ID de banimento do mac_address no banco de dados.
 */
static int mac_unban_mac_sub(DBKey key, DBData *data, va_list args)
{
    const char* mac_address = (const char*) va_arg(args, const char*);
    int* id = (int*)va_arg(args, int*);
    struct mac_ban_node* node = DB->data2ptr(data);

    if(!strcmpi(node->mac_address, mac_address))
    {
        *id = node->id;
        return 1;
    }

    return 0;
}

/**
 * Remove o ban do mac_address.
 */
void mac_unban_mac(const char* mac_address)
{
    int id = 0;

    // Remove apenas banimentos não temporarios
    if(mac->banneddb->foreach(mac->banneddb, mac_unban_mac_sub, mac_address, &id) && id > 0)
        mac->unban(id);

    return;
}

/**
 * Finaliza informações e dados de estrutura relacionados aos endereços mac.
 */
void mac_final(void)
{
    // Destroi as informações dos macs logados.
    mac->onlinedb->destroy(mac->onlinedb, NULL);

    if(login->config->mac_ban_enable)
    {
        mac->banneddb->destroy(mac->banneddb, NULL);
        timer->delete(cleanup_timer_id, mac->unban_cleanup);
        cleanup_timer_id = INVALID_TIMER;

        SQL->Free(sql_handle);
        sql_handle = NULL;
    }

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

    signature = "sql.";
    if( strncmpi(key, signature, strlen(signature)) == 0 )
    {
        key += strlen(signature);
        if( strcmpi(key, "db_hostname") == 0 )
            safestrncpy(global_db_hostname, value, sizeof(global_db_hostname));
        else
        if( strcmpi(key, "db_port") == 0 )
            global_db_port = (uint16)strtoul(value, NULL, 10);
        else
        if( strcmpi(key, "db_username") == 0 )
            safestrncpy(global_db_username, value, sizeof(global_db_username));
        else
        if( strcmpi(key, "db_password") == 0 )
            safestrncpy(global_db_password, value, sizeof(global_db_password));
        else
        if( strcmpi(key, "db_database") == 0 )
            safestrncpy(global_db_database, value, sizeof(global_db_database));
        else
        if( strcmpi(key, "codepage") == 0 )
            safestrncpy(global_codepage, value, sizeof(global_codepage));
        else
            return false;// not found
        return true;
    }

    signature = "mac.";
    if( strncmpi(key, signature, strlen(signature)) == 0 )
    {
        key += strlen(signature);
        if(strcmpi(key, "block_dual") == 0)
            login->config->mac_block_dual = (bool)config_switch(value);
        else if(strcmpi(key, "ban_enable") == 0)
            login->config->mac_ban_enable = (bool)config_switch(value);
		else if(strcmpi(key, "force_packet") == 0)
			login->config->mac_force_packet = (bool)config_switch(value);
        else
        // Configurações de acesso ao banco de dados.
        if( strcmpi(key, "sql.db_hostname") == 0 )
            safestrncpy(mac_db_hostname, value, sizeof(mac_db_hostname));
        else
        if( strcmpi(key, "sql.db_port") == 0 )
            mac_db_port = (uint16)strtoul(value, NULL, 10);
        else
        if( strcmpi(key, "sql.db_username") == 0 )
            safestrncpy(mac_db_username, value, sizeof(mac_db_username));
        else
        if( strcmpi(key, "sql.db_password") == 0 )
            safestrncpy(mac_db_password, value, sizeof(mac_db_password));
        else
        if( strcmpi(key, "sql.db_database") == 0 )
            safestrncpy(mac_db_database, value, sizeof(mac_db_database));
        else
        if( strcmpi(key, "sql.codepage") == 0 )
            safestrncpy(mac_codepage, value, sizeof(mac_codepage));
        else
        if( strcmpi(key, "sql.table_log") == 0 )
            safestrncpy(mac_table_log, value, sizeof(mac_table_log));
        else
        if( strcmpi(key, "sql.table_list") == 0 )
            safestrncpy(mac_table_list, value, sizeof(mac_table_list));
        else
            return false;// not found

        return true;
    }

    return false;
}

/**
 * Timer para limpar as contas banidas do banco de dados e da memória.
 */
int mac_unban_cleanup(int tid, int64 tick, int id, intptr_t data)
{
    // Ban por mac não habilitado.
    if(!login->config->mac_ban_enable)
        return 0;

    // Varre todas as entradas de mac_address banidos
    //  procurando alguma para remover do ban.
    mac->banneddb->foreach(mac->banneddb, mac->unban_cleanup_sub);
    return 0;
}

/**
 * Método para encontrar os registros de mac_banidos
 *  e libera-los se for o caso.
 */
int mac_unban_cleanup_sub(DBKey key, DBData *data, va_list args)
{
    // Transforma o node ponteiro dos dados em node
    struct mac_ban_node* node = DB->data2ptr(data);

    // ?? Nada no ponteiro, nunca se sabe o que se pode encontrar @w@
    if(node == NULL)
        return 0;

    // Caso o mac tenha sido marcado como desbanido mas ainda consta na lista...
    if(node->banned == false
        // Caso o tempo do ban tenha expirado...
    || (node->unban_tick > 0 && DIFF_TICK(node->unban_tick, timer->gettick()) <= 0))
    {
        mac->unban(node->id);        
    }

    return 0;
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
    mac->ban_list_load      = mac_ban_list_load;
    mac->ban_check          = mac_ban_check;
    mac->ban_end            = mac_ban_end;
    mac->ban_check_sub      = mac_ban_check_sub;
    mac->ban                = mac_ban;
    mac->ban_permanent      = mac_ban_permanent;
    mac->unban              = mac_unban;
    mac->unban_mac          = mac_unban_mac;
    mac->unban_cleanup      = mac_unban_cleanup;
    mac->unban_cleanup_sub  = mac_unban_cleanup_sub;

    return;
}

