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

#ifndef LUA_MACROS_H
#define LUA_MACROS_H

#include "lua.h"
#include "lualib.h"
#include "lauxlib.h"

// Máximo de caracteres para nomes das tabelas de logs [Megasantos]
#define SIZE_LOGS 20

/**
 * Macros para logs LUA [Megasantos]
**/

/* Macro para logs inteiros */
#define LOGS_LUA_INTEGER(state, idx, k) do { \
	lua_getfield(state, idx, #k); \
if (!lua_isinteger(L, -1)) { \
	ShowWarning("A configura%c%co '"CL_LT_YELLOW"%s"CL_RESET"' permite apenas n%cmeros inteiros.\n", 135, 198, #k, 163); \
	lua_pop(L, 1); \
	continue; \
} \
	logs->config.k = (int)lua_tointeger(L, -1); \
	count += 1; \
	lua_pop(L, 1); \
} while (0)

/* Macro para logs booleanos */
#define LOGS_LUA_BOOLEAN(state, idx, k) do { \
	lua_getfield(state, idx, #k); \
if (!lua_isboolean(L, -1)) { \
	ShowWarning("A configura%c%co '"CL_LT_YELLOW"%s"CL_RESET"' permite apenas valores booleanos.\n", 135, 198, #k); \
	lua_pop(L, 1); \
	continue; \
} \
	logs->config.k = lua_toboolean(L, -1); \
	count += 1; \
	lua_pop(L, 1); \
} while (0)

/* Macro para nome do banco de dados */
#define LOGS_LUA_STRINGS(state, idx, k) do { \
	size_t len; \
	lua_getfield(state, idx, #k); \
if (!lua_isstring(L, -1)) { \
	ShowWarning("A configura%c%co '"CL_LT_YELLOW"%s"CL_RESET"' permite apenas strings.\n", 135, 198, #k); \
	lua_pop(L, 1); \
	continue; \
} \
	safestrncpy(logs->config.k, lua_tolstring(L, -1, &len), SIZE_LOGS); \
if(len > SIZE_LOGS) { \
	ShowWarning("A configura%c%co '"CL_LT_YELLOW"%s"CL_RESET"' permite somente '"CL_LT_YELLOW"%d"CL_RESET"' caracteres, altere o nome para fazer a leitura.\n", 135, 198, #k, SIZE_LOGS); \
	lua_pop(L, 1); \
	continue; \
} \
	count += 1; \
	lua_pop(L, 1); \
} while (0)


/**
 * Macros para configuração de batalha LUA [Megasantos]
**/
/* Macro para configurações de batalha inteiros */
#define BATTLE_LUA_INTEGER(state, idx, k) do { \
	lua_getfield(state, idx, #k); \
if (!lua_isinteger(L, -1)) { \
	ShowWarning("A configura%c%co '%s' permite apenas n%cmeros inteiros.\n", 135, 198, #k, 163); \
	lua_pop(L, 1); \
	continue; \
} \
	battle_config.k = (int)lua_tointeger(L, -1); \
	value += 1; \
	lua_pop(L, 1); \
} while (0)

/* Macro para configurações de batalha booleanas */
#define BATTLE_LUA_BOOLEAN(state, idx, k) do { \
	lua_getfield(state, idx, #k); \
if (!lua_isboolean(L, -1)) { \
	ShowWarning("A configura%c%co '%s' permite apenas valores booleanos.\n", 135, 198, #k); \
	lua_pop(L, 1); \
	continue; \
} \
	battle_config.k = lua_toboolean(L, -1); \
	value += 1; \
	lua_pop(L, 1); \
} while (0)

/**
* Macros para configuração de script LUA [Megasantos]
**/
/* Macro para configurações de script inteiros */
#define SCRIPT_LUA_INTEGER(state, idx, k) do { \
	lua_getfield(state, idx, #k); \
if (!lua_isinteger(L, -1)) { \
	ShowWarning("A configura%c%co '%s' permite apenas n%cmeros inteiros.\n", 135, 198, #k, 163); \
	lua_pop(L, 1); \
	continue; \
} \
	script->config.k = (int)lua_tointeger(L, -1); \
	count += 1; \
	lua_pop(L, 1); \
} while (0)

/* Macro para configurações de script booleanas */
#define SCRIPT_LUA_BOOLEAN(state, idx, k) do { \
	lua_getfield(state, idx, #k); \
if (!lua_isboolean(L, -1)) { \
	ShowWarning("A configura%c%co '%s' permite apenas valores booleanos.\n", 135, 198, #k); \
	lua_pop(L, 1); \
	continue; \
} \
	script->config.k = lua_toboolean(L, -1); \
	count += 1; \
	lua_pop(L, 1); \
} while (0)

#endif //LUA_MACROS_H