@echo off
:: Leaf Launcher — opens editor.html in Chrome with no browser UI
:: Place this file in the same folder as editor.html

set "FILE=%~dp0editor.html"

:: Try common Chrome install locations
set "CHROME="
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
    set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
) else if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" (
    set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
) else if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" (
    set "CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe"
)

if "%CHROME%"=="" (
    echo Chrome not found. Please edit this file and set the path to chrome.exe manually.
    pause
    exit /b 1
)

start "" "%CHROME%" --app="file:///%FILE:\=/%"  --window-size=1000,750
