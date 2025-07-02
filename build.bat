@echo off
echo Building...
odin build . -collection:estro=estroengine
if errorlevel 1 goto fuck
echo Build was successful :3
pause
exit /b
:fuck
echo Build failed.