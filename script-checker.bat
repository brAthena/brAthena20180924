@ECHO OFF

COLOR 0F

ECHO.
ECHO                           brAthena Dev.Team apresenta
ECHO                 _           _   _   _
ECHO                ^| ^|__  _ __ / \ ^| ^|_^| ^|__   ___ _ __   __ _ 
ECHO                ^| '_ \^| '__/ _ \^| __^| '_ \ / _ \ '_ \ / _` ^|
ECHO                ^| ^|_) ^| ^| / ___ \ ^|_^| ^| ^| ^|  __/ ^| ^| ^| (_^| ^|
ECHO                ^|_.__/^|_^|/_/   \_\__^|_^| ^|_^|\___^|_^| ^|_^|\__,_^|
ECHO.
ECHO                       Verificador de sintaxe do script
ECHO                          http://forum.brathena.org
ECHO.
ECHO.
ECHO.

:LOOP
	SET /P SCRIPT="Entre caminho\para\seu\script.txt: " %=%
	map-server.exe --script-check --load-script %SCRIPT%
	ECHO.
GOTO LOOP
