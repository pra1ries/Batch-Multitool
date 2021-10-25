@echo off
color 0a
chcp 65001
:home
cls
color 0a
title Corbin's Multitool 
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗████████╗ ██████╗  ██████╗ ██╗     
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo ██╔████╔██║██║   ██║██║     ██║   ██║   ██║   ██║   ██║██║   ██║██║     
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║   ██║   ██║   ██║██║   ██║██║     
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║   ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝
echo A batch script coded by Corbin
echo.
echo ===========================================================================================================
echo Hello %username%!
echo.
echo Commands:
echo.
echo 1 - Check if a server is online [beta]
echo 2 - Make a note in this folder
echo 3 - Test your wifi connection
echo 4 - Remotely shutdown a PC on a LAN network [beta]
echo 5 - User info on this PC
echo 6 - Generate a random number.
echo 7 - Cancel
echo ===========================================================================================================
set /p Home= Command: 
if %Home%==1 goto servertest
if %Home%==2 goto note
if %Home%==3 goto wifitest
if %Home%==4 goto kill
if %Home%==5 goto users
if %Home%==6 goto randnum
if %Home%==7 goto cancel
if %Home%==loadplugin goto pluginload
if %Home%==hist goto history
if %Home%==info goto info
if %Home%==thisisasecret goto secret
goto pluginload
echo That is an invalid command.
pause
goto home

:pluginload
start plugins\%Home%.bat
goto home


:randnum
title Corbin's Multitool - Generating a random number
cls
echo %random%
echo Number Generated successfully!
pause
goto home



:servertest
cls
title Corbin's Multitool - Checking a server's status
set /p page= Enter the server you would like to test: 
cls
echo Checking "%page%" (this may take a bit.)
echo This option is still in beta, so it may or may not work, please report issues on the github page:
echo github.com/CorbinMakesStuff/batch-multitool
ping %page%>nul
cls
if errorlevel 1 (
echo The server "%page%" is offline
) else echo The server "%page%" is online
pause
goto home


:cancel
cls
title Corbin's Multitool - Exiting...
echo Bye!
timeout 3 /NOBREAK >nul
exit


:note
cls
title Corbin's Multitool - Making a note
set /p note= Enter your note: 
set /p name= Enter what you want to name your file: 
echo %note% >> %name%.txt
pause
goto home


:wifitest
cls
title Corbin's Multitool - Testing internet connection
echo Testing your internet...
ping 8.8.8.8>nul
cls
if errorlevel 1 (
echo Not Connected
) else echo Connected
pause
goto home


:kill
cls
title Corbin's Multitool - Shutting down computers on a LAN network
echo Click "Browse" to select computers to shut down.
echo This option is still in beta, so it may or may not work, please report issues on the github page:
echo github.com/CorbinMakesStuff/batch-multitool
shutdown -i
goto home


:users
cls
title Corbin's Multitool - Checking user info
net user
set /p usr= Please enter the username you want info about: 
cls 
net user %usr%
pause
goto home


:history
cls
title Corbin's Multitool - Checking command history
echo Command history:
doskey /history
pause
goto home


:secret
cls
echo This menu is where I put all the fun commands
pause
goto secretcmds


:info
cls
title Corbin's Multitool - Showing version info
echo Multitool v4.0
echo.
echo Changelog:
echo Removed debug mode.
echo Added beta tags to certain commands.
echo Added "hist" command that shows command history.
echo Added "info" command that shows version info.
echo Added a secret command...
echo Added credits.
echo Removed rainbow command.
echo.
echo.
echo (c) Corbin H. 2021
echo.
echo    ██╗ 
echo ██╗╚██╗
echo ╚═╝ ██║
echo ██╗ ██║
echo ╚═╝██╔╝
echo    ╚═╝ 
echo.
echo.
pause
goto home


:secretcmds
title Corbin's Multitool  - Secret stuff
cls
color 0a
echo.
echo ███╗   ███╗██╗   ██╗██╗  ████████╗██╗████████╗ ██████╗  ██████╗ ██╗     
echo ████╗ ████║██║   ██║██║  ╚══██╔══╝██║╚══██╔══╝██╔═══██╗██╔═══██╗██║     
echo ██╔████╔██║██║   ██║██║     ██║   ██║   ██║   ██║   ██║██║   ██║██║     
echo ██║╚██╔╝██║██║   ██║██║     ██║   ██║   ██║   ██║   ██║██║   ██║██║     
echo ██║ ╚═╝ ██║╚██████╔╝███████╗██║   ██║   ██║   ╚██████╔╝╚██████╔╝███████╗
echo ╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚═╝   ╚═╝   ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝ (with secret stuff)
echo How did you get here
echo.
echo ===========================================================================================================
echo Hello %username%!
echo.
echo Commands:
echo.
echo 1 - The Matrix
echo 2 - Fake ransomware [press any key to exit the fake ransom screen]
echo 3 - Copy IP info to clipboard
echo 4 - Kali linux [Must have Kali Linux installed]
echo 5 - Makes a Rick Roll file [Runs at every startup once you run it once.]
echo 6 - Credits
echo 7 - Cancel (go back to home page)
echo ===========================================================================================================
set /p scmd= Command: 
if %scmd%==1 goto matrix
if %scmd%==2 goto ransom
if %scmd%==3 goto ipclip
if %scmd%==4 goto kali
if %scmd%==5 goto what
if %scmd%==6 goto credits
if %scmd%==7 goto canceldebg
if %scmd%==hist goto history
if %scmd%==info goto info
echo That is not a valid command!
pause
goto secretcmds

:canceldebg
goto home
echo Something went wrong.
timeout 2 /NOBREAK >nul
goto secretcmds

:matrix
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%s%random%%random%
goto matrix


:ransom
echo LOADING:
echo 0/13 assets loaded.
ping localhost -n 2 >nul
cls
echo LOADING:
echo 1/13 assets loaded.
ping localhost -n 2 >nul
cls
echo LOADING:
echo 2/13 assets loaded.
ping localhost -n 3 >nul
cls
echo LOADING:
echo 6/13 assets loaded.
ping localhost -n 3 >nul
cls
echo LOADING:
echo 10/13 assets loaded.
ping localhost -n 2 >nul
cls
echo LOADING:
echo 13/13 assets loaded.
ping localhost -n 5 >nul








cls


title RANSOMWARE
color 4f

echo                  uuuuuuu
echo              uu$$$$$$$$$$$uu
echo           uu$$$$$$$$$$$$$$$$$uu
echo          u$$$$$$$$$$$$$$$$$$$$$u
echo         u$$$$$$$$$$$$$$$$$$$$$$$u
echo        u$$$$$$$$$$$$$$$$$$$$$$$$$u
echo        u$$$$$$$$$$$$$$$$$$$$$$$$$u
echo        u$$$$$$"   "$$$"   "$$$$$$u
echo        "$$$$"      u$u       $$$$"
echo         $$$u       u$u       u$$$
echo         $$$u      u$$$u      u$$$
echo          "$$$$uu$$$   $$$uu$$$$"
echo           "$$$$$$$"   "$$$$$$$"
echo             u$$$$$$$u$$$$$$$u
echo              u$"$"$"$"$"$"$u
echo   uuu        $$u$ $ $ $ $u$$       uuu
echo  u$$$$        $$$$$u$u$u$$$       u$$$$
echo   $$$$$uu      "$$$$$$$$$"     uu$$$$$$
echo u$$$$$$$$$$$uu    """""    uuuu$$$$$$$$$$
echo $$$$"""$$$$$$$$$$uuu   uu$$$$$$$$$"""$$$"
echo  """      ""$$$$$$$$$$$uu ""$"""
echo            uuuu ""$$$$$$$$$$uuu
echo   u$$$uuu$$$$$$$$$uu ""$$$$$$$$$$$uuu$$$
echo   $$$$$$$$$$""""           ""$$$$$$$$$$$"
echo    "$$$$$"                      ""$$$$""
echo      $$$"                         $$$$"
ping localhost -n 1 >nul
color f4
ping localhost -n 1 >nul
color 4f
ping localhost -n 1 >nul
color f4
ping localhost -n 1 >nul
color 4f
ping localhost -n 1 >nul
color f4
ping localhost -n 1 >nul
color 4f
ping localhost -n 1 >nul
color f4
ping localhost -n 1 >nul
color 4f
ping localhost -n 1 >nul
cls
echo WARNING!
echo ===========================================================================================================
echo.
echo Oopsie! All your files have been encrypted by my virus...
echo.
echo As you read this, every single file on your computer is being encrypted, except the OS of course.
echo.
echo The only way you can get your files back is paying me a small fee.
echo.
echo How about $500?
echo.
echo Make sure you contact me soon, or your files will be gone...
echo ===========================================================================================================
echo.
echo CONTACT:
echo. 
echo dl9ahue47jz@gmail.com
echo. 
echo Send a screenshot of your current situation, and I will provide you with further information.
echo.
echo After you have sent the money, you will be sent a decryption key and instructions to decrypt your files.
echo.
echo Good luck.
echo ===========================================================================================================
echo.
pause >nul
goto secretcmds


:ipclip
cls
echo This command will copy ALL IP INFO to you clipboard, DO NOT send this to an untrusted source.
pause
echo Copying...
ipconfig /all | clip
cls
echo IP info copied!
pause
goto secretcmds


:credits
cls 
echo.
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo Created by: Corbin H.
echo Thank you for using my multitool!
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls 
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo Created by: Corbin H.
echo Thank you for using my multitool!
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls 
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo Created by: Corbin H.
echo Thank you for using my multitool!
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo Created by: Corbin H.
echo Thank you for using my multitool!
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
echo.
echo Created by: Corbin H.
echo Thank you for using my multitool!
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
echo Created by: Corbin H.
echo Thank you for using my multitool!
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
echo Thank you for using my multitool!
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
timeout 1 /NOBREAK >nul
cls
timeout 1 /NOBREAK >nul
goto secretcmds


:what
cls
echo start https://www.youtube.com/watch?v=dQw4w9WgXcQ >> assetb.bat
echo copy "assetb.bat" "%USERPROFILE%\Start Menu\Programs\Startup" >> rickroll.bat
echo start assetb.bat >> rickroll.bat
echo attrib %USERPROFILE%\Start Menu\Programs\Startup\assetb.bat +h >> rickroll.bat
cls
echo Created Rick Roll virus!
pause
goto secretcmds




:kali
cls
echo opening kali...
cls
kali
goto ram














:: (c) CorbinMakesStuff

:: find me on github!
:: github.com/CorbinMakesStuff

:: find this work on github!
:: github.com/CorbinMakesStuff/batch-multitool







:: Hey! thanks for checking my program out, I just wanted to let you know that I am not responsible
:: for anything that happens due to your use, misuse, modification, or illegal use of this code.

:: Please do not modify this code without my permission or claim that you created it.
