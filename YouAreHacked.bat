@echo off
color 0a

:: Set Command Prompt to Full Screen
mode con: cols=150 lines=1000

:: Data is transferring loop
for /L %%i in (1,1,1000) do (
    echo Data is transferring %%i...
    set /p dummy=<nul
)

:: Simulate loading dots during data transfer
echo.
echo Data is transferring...
for /L %%i in (1,1,50) do (
    set /p="." <nul
    timeout /t 0.1 >nul
)

:: After completing the data transfer, show "Data Transfer Complete" in the center
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo                          DATA TRANSFER COMPLETE!
echo.
echo.
echo.
echo.
echo.

:: Final message after printing 1000 lines
echo [HACK COMPLETE] You are Hacked! ;)
timeout /t 3 > nul

:: Automatically close the CMD window after completion
exit
