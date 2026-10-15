@echo off
setlocal
cd /d "%~dp0"
title SunSense AI - Website and Backend
echo ==============================================
echo   SunSense AI - Starting website and backend
echo ==============================================
where python >nul 2>nul
if errorlevel 1 (
  echo Python was not found. Install Python 3.11 or 3.12 and enable Add Python to PATH.
  pause
  exit /b 1
)
echo Installing the required Flask package...
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
if errorlevel 1 (
  echo Flask installation failed. Check internet connection and Python installation.
  pause
  exit /b 1
)
echo.
echo Open this address in Chrome: http://127.0.0.1:5000
echo Health check: http://127.0.0.1:5000/health
echo Keep this window open while using SunSense AI.
echo Press Ctrl+C to stop the server.
echo.
python ai_backend\app.py
echo.
echo Backend stopped. If an error appeared above, take a screenshot.
pause
