@echo off
echo Building...
odin run . -collection:estro=Estroengine-Odin
if errorlevel 1 goto fuck
exit /b
:fuck
echo Build failed.