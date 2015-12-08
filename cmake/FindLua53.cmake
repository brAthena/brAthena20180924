# Procura pela biblioteca do Lua
# Módulos:
#  LUA53_FOUND, Verdadeiro caso a lua seja encontrada.
#  LUA53_LIBRARIES, Lista de bibliotecas da lua
#  LUA53_INCLUDE_DIR, Diretório onde está lua.h
#  LUA53_VERSION_STRING, Versão da Lua encontrada pelo CMake

FIND_PATH(LUA53_INCLUDE_DIR lua.h
  HINTS
  $ENV{LUA_DIR}
  PATH_SUFFIXES include/lua53 include/lua5.3 include/lua include
  PATHS
  ~/Library/Frameworks
  /Library/Frameworks
  /sw # Fink
  /opt/local # DarwinPorts
  /opt/csw # Blastwave
  /opt
)

FIND_LIBRARY(LUA53_LIBRARY
  NAMES lua53 lua5.3 lua-5.3 lua
  HINTS
  $ENV{LUA_DIR}
  PATH_SUFFIXES lib64 lib
  PATHS
  ~/Library/Frameworks
  /Library/Frameworks
  /sw
  /opt/local
  /opt/csw
  /opt
)

IF(LUA53_LIBRARY)
  IF(UNIX AND NOT APPLE)
    FIND_LIBRARY(LUA53_MATH_LIBRARY m)
    SET( LUA53_LIBRARIES "${LUA53_LIBRARY};${LUA53_MATH_LIBRARY}" CACHE STRING "Lua Libraries")
  ELSE(UNIX AND NOT APPLE)
    SET( LUA53_LIBRARIES "${LUA53_LIBRARY}" CACHE STRING "Lua Libraries")
  ENDIF(UNIX AND NOT APPLE)
ENDIF(LUA53_LIBRARY)

IF(LUA53_INCLUDE_DIR AND EXISTS "${LUA53_INCLUDE_DIR}/lua.h")
  FILE(STRINGS "${LUA53_INCLUDE_DIR}/lua.h" lua_version_str REGEX "^#define[ \t]+LUA_RELEASE[ \t]+\"Lua .+\"")

  STRING(REGEX REPLACE "^#define[ \t]+LUA_RELEASE[ \t]+\"Lua ([^\"]+)\".*" "\\1" LUA53_VERSION_STRING "${lua_version_str}")
  UNSET(lua_version_str)
ENDIF()

INCLUDE(FindPackageHandleStandardA QUIETLY and REQUIRED rgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(Lua53
                                  REQUIRED_VARS LUA53_LIBRARIES LUA53_INCLUDE_DIR
                                  VERSION_VAR LUA53_VERSION_STRING)

MARK_AS_ADVANCED(LUA53_INCLUDE_DIR LUA53_LIBRARIES LUA53_LIBRARY LUA53_MATH_LIBRARY)