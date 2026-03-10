@echo off
:: Détecte le chemin Steam automatiquement depuis le registre
for /f "tokens=2*" %%a in ('reg query "HKLM\SOFTWARE\WOW6432Node\Valve\Steam" /v "InstallPath"') do set STEAMPATH=%%b

:: Lance le jeu
start "" "%STEAMPATH%\steamapps\common\Prototype 2\prototype2.exe"

:: Attend 15 secondes
timeout /t 15 /nobreak

:: Remet la valeur language à 70
reg add "HKLM\SOFTWARE\WOW6432Node\activision\prototype 2" /v "language" /t REG_SZ /d "70" /f

echo Valeur language remise à 70 !