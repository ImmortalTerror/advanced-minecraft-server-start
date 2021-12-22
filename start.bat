:: Made by Immortal Terror
:: https://github.com/immortalterror
@echo OFF

:loop

:: World backup
if EXIST "world" (
	xcopy /y /i /e "world" "Backups\%date:/=_%\%time::=-%_world_backup">nul
	echo World backup made!
	) ELSE echo World folder not found!
echo.

:: If you have the schematics mod you can enable this
@REM if EXIST schematics (
@REM 	xcopy /y /i /e "schematics" "Backups\%date:/=_%\%time::=-%_schematics_backup">nul
@REM 	echo schematics backup made!
@REM 	) ELSE echo Schematics folder not found!
@REM echo.

echo [%TIME%] SERVER STARTING
title Minecraft Server ^| Last restart: %DATE% %TIME%

:: Change how much ram you want the server to have here
java -Xmx2048M -Xms2048M -jar server.jar nogui

title Minecraft Server ^| Server not running!
echo Press control+C to exit the server!
timeout 10
echo (%time%) Restarting!
echo.
echo.
echo.

goto loop