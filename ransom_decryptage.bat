@echo off
setlocal enabledelayedexpansion

REM Dossier source
set "source_folder=C:\Users\mcevi\OneDrive\Bureau\Mes_documents\Test1\encrypted"

REM Dossier destination
set "decrypted_folder=C:\Users\mcevi\OneDrive\Bureau\Mes_documents\Test1\decrypted"

REM Mot de passe pour le décryptage
set "mot_de_passe=HACK127_fOB0?a4?644x4aeR"

REM Création du dossier decrypted s'il n'existe pas
if not exist "%decrypted_folder%" mkdir "%decrypted_folder%"

REM Décryptage des fichiers
for %%f in ("%source_folder%\*.*") do (
    openssl enc -d -aes-256-cbc -salt -pass "pass:%mot_de_passe%" -in "%%f" -out "%decrypted_folder%\%%~nxf"
)

REM Suppression de l'extension .enc des fichiers décryptés
ren "%decrypted_folder%\*.enc" *.

REM Fin du script
endlocal
