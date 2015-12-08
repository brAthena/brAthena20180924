#############################
#   brAthena                #						
# @author: Rafael Gorges    #
# @date: 11/30/15           #
#############################

# Verifica a versão do CMake e fornece um nome para o projeto
CMAKE_MINIMUM_REQUIRED(VERSION 2.8.9)
PROJECT(brAthena C CXX)

SET(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake/" ${CMAKE_MODULE_PATH})

# Procura a biblioteca do MySQL
FIND_PACKAGE(MySQL)
if(MySQL_FOUND)
	MESSAGE(SEND_ERROR "O pacote do MySQL não está instalado.")
endif(MySQL_FOUND)

# Procura a biblioteca do Lua
if (WITH_LUAVER MATCHES "53")
	FIND_PACKAGE(Lua53 REQUIRED)
		set(LUA_INCLUDES ${LUA53_INCLUDE_DIR})
		set(LUA_LIBDIR "lib/lua/5.3" CACHE STRING "Lua encontrado")
else()
	mmessage(FATAL_ERROR "Versão desconhecida do Lua ${WITH_LUAVER}, é necessário ser 51, 52, 53, JIT")

# Obtem o diretório de bibliotecas de inclusão
INCLUDE_DIRECTORIES(
    ${CMAKE_CURRENT_SOURCE_DIR}/src/
    ${LUA_INCLUDES}
)

# Obtem globalmente todos os arquivos c
FILE(GLOB SOURCES "src/*.c")

# Adiciona a variavel global SOURCES para ser adicionada ao executável e compilado
ADD_EXECUTABLE(gateway ${SOURCES})

# Diretório de bibliotecas
LINK_DIRECTORIES(/usr/lib)