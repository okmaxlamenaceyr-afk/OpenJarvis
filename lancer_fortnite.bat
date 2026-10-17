@echo off
setlocal
title Lanceur Fortnite

rem Utilise le protocole officiel de l'Epic Games Launcher, sans chemin local fixe.
reg query "HKCR\com.epicgames.launcher\shell\open\command" >nul 2>&1
if errorlevel 1 goto launcher_missing

start "" "com.epicgames.launcher://apps/Fortnite?action=launch&silent=true"
if errorlevel 1 goto launch_failed
exit /b 0

:launcher_missing
echo Epic Games Launcher est introuvable ou son protocole n'est pas enregistre.
echo Installez ou reparez Epic Games Launcher, puis reessayez.
pause
exit /b 1

:launch_failed
echo Windows n'a pas pu transmettre la demande de lancement a Epic Games Launcher.
echo Verifiez que le launcher est installe et que Fortnite est disponible dans votre bibliotheque.
pause
exit /b 1
