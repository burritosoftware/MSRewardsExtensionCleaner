@echo off

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%AppData%\Microsoft\Windows\Start Menu\Programs\Startup\Microsoft-Rewards-Extension-Cleaner.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%~dp0\runsilent.vbs" >> %SCRIPT%
echo oLink.WorkingDirectory = "%~dp0" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%
echo Added Microsoft Rewards Extension Cleaner to the startup folder.
echo You can delete the shortcut from %AppData%\Microsoft\Windows\Start Menu\Programs\Startup.
echo.
pause