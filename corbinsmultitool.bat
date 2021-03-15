@echo off
color 0a
:home
cls
title Corbin's Multitool
echo ===========================================================================================================
echo Hello %username%!
echo.
echo Commands:
echo.
echo 1 - Check if a server is online
echo 2 - Make a note in this folder
echo 3 - Test your wifi connection
echo 4 - Remotely shutdown a PC on a school network
echo 5 - Cancel
echo ===========================================================================================================
set /p Home= Command: 
if %Home%==1 goto webpagetest
if %Home%==2 goto note
if %Home%==3 goto wifitest
if %Home%==4 goto kill
if %Home%==5 goto cancel
if %Home%==debug goto debug
echo That is an invalid command.
pause
goto home


:servertest
cls
set /p page= Enter the webpage you would like to test: 
cls
echo Checking the entered webpage...
ping %page%>nul
cls
if errorlevel 1 (
echo The webpage is offline
) else echo The webpage is online
pause


:cancel
exit


:note
set /p note= Note:
set /p name= Enter what you want to name your file: 
echo %note% >> %name%.txt
pause
goto home


:wifitest
cls
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
echo Click "Browse" to select computers to shut down
shutdown -i
goto home


:debug
goto homedebug









:homedebug
cls
title Corbin's Multitool - Debug
echo ===========================================================================================================
echo Hello %username%!
echo.
echo Commands:
echo.
echo 1 - Check if a webpage is online
echo 2 - Make a note in this folder
echo 3 - Test your wifi connection
echo 4 - Remotely shutdown a PC on a school network
echo 5 - Cancel
echo.
echo (DEBUG MODE)
echo ===========================================================================================================
set /p Home= Command: 
if %Home%==1 goto servertestdebug
if %Home%==2 goto notedebug
if %Home%==3 goto wifitestdebug
if %Home%==4 goto killdebug
if %Home%==5 goto canceldebug
if %Home%==debugexit goto debugexit


:servertestdebug
cls
set /p page= Enter the webpage you would like to test: 
cls
echo Checking the entered webpage...
ping %page%
cls
if errorlevel 1 (
echo The webpage is offline
) else echo The webpage is online
pause


:canceldebug
exit


:notedebug
set /p note= Note:
set /p name= Enter what you want to name your file: 
echo %note% >> %name%.txt
pause
goto homedebug


:wifitestdebug
cls
echo Testing your internet...
ping 8.8.8.8
cls
if errorlevel 1 (
echo Not Connected
) else echo Connected
pause
goto homedebug


:killdebug
cls
echo click "Browse" to select computers to shut down
shutdown -i
goto homedebug


:debugexit
goto home
