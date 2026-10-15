@echo off
cd /d "%~dp0"
echo Checking SunSense AI backend...
python -c "import urllib.request; print(urllib.request.urlopen('http://127.0.0.1:5000/health', timeout=5).read().decode())"
if errorlevel 1 echo Backend is not reachable. Double-click START_BACKEND.bat and keep it open.
pause
