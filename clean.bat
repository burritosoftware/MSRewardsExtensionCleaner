@echo off
title Microsoft Rewards Extension Cleaner
mkdir temp
echo Initializing... ^| Started at %date%-%time% > "%~dp0resources\log.log"
echo Checking for extension updates...
"%~dp0\libs\curl\curl.exe" -Ls -o nul -w "%%{url_effective}" "https://clients2.google.com/service/update2/crx?response=redirect&os=win&arch=x86-64&os_arch=x86-64&nacl_arch=x86-64&prod=chromiumcrx&prodchannel=unknown&prodversion=89.0.4389.90&acceptformat=crx2,crx3&x=id%%3Dfbgcedjacmlbgleddnoacbnijgmiolem%%26uc&zipname=fbgcedjacmlbgleddnoacbnijgmiolem.zip" > "%~dp0\temp\serverversion.txt"
set /p serverversion=<"%~dp0\temp\serverversion.txt"
for %%a in ("%serverversion%") do ( set "serverversion=%%~NXa" )
set serverversion=%serverversion: =%
set /p localversion=<"%~dp0resources\extversion.txt"
echo Server Version: %serverversion% ^| Local Version: %localversion%
echo Server Version: %serverversion% ^| Local Version: %localversion% > "%~dp0resources\log.log"
set localversion=%localversion: =%
echo.
if /I NOT "%serverversion%"=="%localversion%" (goto patch) else (echo No updates were found, log finished > "%~dp0resources\log.log" && color 47 && echo Looks like there's no updates for MS Rewards. Not cleaning. && goto endscreen)

:patch
echo. > "%~dp0resources\log.log"
echo Patching started at %time% > "%~dp0resources\log.log"
echo An update for MS Rewards is available, or this is a first time clean!
echo.
echo | set /p dummyFile="%serverversion%" > "%~dp0\resources\extversion.txt"
echo Downloading Microsoft Rewards extension...
echo Downloading executed at %time% > "%~dp0resources\log.log"
"%~dp0\libs\curl\curl.exe" -# -L -o "%~dp0temp\msrewards.crx" "https://clients2.google.com/service/update2/crx?response=redirect&os=win&arch=x86-64&os_arch=x86-64&nacl_arch=x86-64&prod=chromiumcrx&prodchannel=unknown&prodversion=89.0.4389.90&acceptformat=crx2,crx3&x=id%%3Dfbgcedjacmlbgleddnoacbnijgmiolem%%26uc&zipname=fbgcedjacmlbgleddnoacbnijgmiolem.zip" -H "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36 Edg/89.0.774.57"
echo.
rmdir /S /Q "%~dp0\LOAD_ME" 2>nul
echo Extracting source...
echo Extracting executed at %time% > "%~dp0resources\log.log"
"%~dp0\libs\7-zip\7z.exe" x "%~dp0temp\msrewards.crx" -y -o"%~dp0\LOAD_ME" > nul
echo.
echo Removing unnecessary files...
echo File removal executed at %time% > "%~dp0resources\log.log"
del "%~dp0\LOAD_ME\background.js" "%~dp0\LOAD_ME\notifications.js" "%~dp0\LOAD_ME\ping.js"
rmdir /S /Q "%~dp0\LOAD_ME\_metadata"
echo.
echo Patching manifest...
echo Manifest patch executed at %time% > "%~dp0resources\log.log"
for /f "delims=" %%i in ('powershell -Nop -C "(Get-Content .\LOAD_ME\manifest.json|ConvertFrom-Json).version"') do set crxversion=%%i
copy /Y "%~dp0\resources\template.json" "%~dp0\LOAD_ME\manifest.json" > nul
powershell -Command "(Get-Content '%~dp0\LOAD_ME\manifest.json') -replace 'CRXVERSION', '%crxversion%' | Out-File -encoding UTF8 '%~dp0\LOAD_ME\manifest.json'"
echo.
color 20
echo. > "%~dp0resources\log.log"
echo Successfully cleaned! Load the "LOAD_ME" folder in any Chromium-based browser (Chrome, Edge, Opera)
goto endscreen

:endscreen
rmdir /S /Q "%~dp0\temp"
echo.
echo Wait 10 seconds, or press any key to exit...
timeout 10 > nul