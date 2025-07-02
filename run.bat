@echo off
echo Building...
odin run . -collection:estro=estroengine
if errorlevel 1 goto fuck
exit /b
:fuck
echo Build failed.