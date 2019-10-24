@echo off
set err_level=0

IF EXIST dist ( del /s /f /q dist ) ELSE ( mkdir dist )
IF EXIST out ( del /s /f /q out ) ELSE ( mkdir out )

start "building" /B /wait "ahk2exe.exe" /ErrorStdOut /in ./src/KeyMash.ahk /out ./dist/KeyMash.exe /icon ./res/keymash.ico > ./out/buildoutput.txt 2>&1
echo ** Building src/KeyMash.ahk **
if errorlevel 1 (
    echo *** Build failed ***
    set err_level=1
)
type out/buildoutput.txt
echo.

rem EXIT SCRIPT
exit /b %err_level%