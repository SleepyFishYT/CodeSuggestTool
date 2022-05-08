::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDpQQQ2MAE+1EbsQ5+n//NakrUkYZ/c4f4rIzoCBL+xevBHGfIJj02Jf+A==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
set ver=Version 1.1
set file=TID.txt
set author=SleepyFish
set discord=SleepyFish#8399
set title=Code Suggest tool by %author%
set dc_invite=discord.gg/sleepyplayground
title %title% - %ver%
color 02
mode 85, 30
goto log

:log
cls
echo Writing log...
echo %USERNAME% Runned %title% - %ver% on %DATE% : %TIME% in %CD%   -   %title%>>log.txt
echo Writing log DONE
goto start

:start
cls
set /p name=Insert Username to Suggest               : 
set /p type=Insert Type [cheat.txt / plugin]         : 
set /p plname=Insert plugin Name (if type plugin)      : 
set /p tid=Insert Title ID or Game Name to Suggest  : 
set /p gver=Insert Game version                      : 
set /p region=Insert Game Region                       : 
goto write

:write
echo. >>%file%
echo %title% - %ver% - %author% >>%file%
echo. >>%file%
echo ---------------------- >>%file%
echo Suggest By           : %name% / %DATE% - %TIME% >>%file%
echo ---------------------- >>%file%
echo Suggest Plugin Name  : %plname% >>%file%
echo Suggest Type         : %type% >>%file%
echo Suggest Game Version : %gver% >>%file%
echo Suggest Region       : %region% >>%file%
echo Suggest TID          : %tid% >>%file%
echo ---------------------- >>%file%
echo. >>%file%
echo Join Discord Server : %dc_invite% >>%file%
echo. >>%file%
goto exit

:exit
echo.
echo.
echo Join Discord Server : %dc_invite%
echo You can now send the "%file%" to %discord% in Discord.
set /p le=Delete log.txt [Y/N]  : 
if /i %le%==y goto delYes
if /i %le%==n goto delNo
exit

:delYes
del %CD%\log.txt
pause

:delNo
pause