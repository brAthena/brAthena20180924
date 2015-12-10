#############################
#   brAthena                #						
# @author: Rafael Gorges    #
# @date: 11/30/15           #
#############################

# Verifica a versão do CMake e fornece um nome para o projeto
CMAKE_MINIMUM_REQUIRED(VERSION 2.8.9)
PROJECT(brAthena C CXX)

# Definindo o diretório padrão para módulos do CMake
SET(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake/" ${CMAKE_MODULE_PATH})

# Procura a biblioteca do MySQL
FIND_PACKAGE(MySQL)
if(MySQL_FOUND)
	MMESSAGE(SEND_ERROR "O pacote do MySQL não está instalado.")
endif(MySQL_FOUND)

# Procura a biblioteca do Lua
if (WITH_LUAVER MATCHES "53")
	FIND_PACKAGE(Lua53 REQUIRED)
		SET(LUA_INCLUDES ${LUA53_INCLUDE_DIR})
		SET(LUA_LIBDIR "lib/lua/5.3" CACHE STRING "Lua encontrado")
else()
	MMESSAGE(FATAL_ERROR "Versão desconhecida do Lua ${WITH_LUAVER}, é necessário ser 51, 52, 53, JIT")

# Procura a biblioteca Pcre
FIND_PACKAGE(PCRE)
if(PCRE_FOUND)
	SET(PCRE_INCLUDE_DIR ${PCRE_INCLUDE_DIRS})
	SET(PCRE_LIBRARIES ${PCRE_NAMES} CACHE STRING "Pcre encontrada")
else()
	MMESSAGE(FATAL_ERROR "A Pcre não está instalada")
endif(PCRE_FOUND)

# Obtem o diretório de bibliotecas de inclusão
INCLUDE_DIRECTORIES(
    ${CMAKE_CURRENT_SOURCE_DIR}/src/
    ${LUA_INCLUDES}
)

# Procura a biblioteca Zlib
FIND_PACKAGE(ZLIB)
if(ZLIB_FOUND)
	SET(ZLIB_INCLUDE_DIR ${ZLIB_INCLUDE_DIRS})
	SET(ZLIB_LIBRARIES ${ZLIB_NAMES} CACHE STRING "Zlib encontrada")
else()
	MMESSAGE(FATAL_ERROR "A Zlib não está instalada")
endif(ZLIB_FOUND)

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

# Definindo uso de CTest para CDash
SET(CTEST_PROJECT_NAME "brAthena Emulador")
SET(CTEST_NIGHTLY_START_TIME "01:00:00 UTC")
SET(CTEST_DROP_METHOD "http")
SET(CTEST_DROP_SITE "open.cdash.org")
SET(CTEST_DROP_LOCATION "/submit.php?project=brAthena+Emulador")
SET(CTEST_DROP_SITE_CDASH TRUE)