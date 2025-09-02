@echo off
setlocal enabledelayedexpansion

REM --- go to this script’s folder ---
cd /d "%~dp0"

REM --- optional: activate venv if you have one ---
if exist ".venv\Scripts\activate.bat" call ".venv\Scripts\activate.bat"

REM --- sanity: show Python version ---
python --version

echo.
echo [Stoner Buddy] Starting... (Ctrl+C to stop)
echo.

:loop
python stoner_buddy.py
echo.
echo [%date% %time%] Bot exited with code %errorlevel%. Restarting in 5s... (Ctrl+C to quit)
timeout /t 5 >nul
goto loop
