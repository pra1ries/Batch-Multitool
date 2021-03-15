@echo off
color 0a
:home
title Corbin's Multitool - Home Page
echo ===========================================================================================================
echo Hello %username%!
echo.
echo Commands:
echo.
echo 1 - [Coming Soon]
echo 2 - Make a note in this folder
echo 3 - Test your wifi connection
echo 4 - Cancel
echo ===========================================================================================================
set /p Home= Command:
if %Home%==1 goto comingsoon
if %Home%==2 goto note
if %Home%==3 goto wifitest
if %Home%==4 goto cancel

:comingsoon
echo Coming Soon!
pause
goto home

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
@echo off
ping 8.8.8.8
Ping www.google.com -n 1 -w 1000
cls
if errorlevel 1 echo Not Connected :(
if errorlevel 0 echo Connected :D
pause
:home
