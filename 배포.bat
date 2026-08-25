@echo off
cd /d "%~dp0"
call firebase deploy --only hosting:najinhub
if errorlevel 1 goto FAIL
echo.
echo ==========================================
echo   OK! Deploy SUCCESS
echo   https://najinhub-jinok.web.app
echo ==========================================
goto END
:FAIL
echo.
echo   FAIL !!! Deploy did NOT finish. Read the error above.
echo   (first time only: run  firebase hosting:sites:create najin-hub)
:END
pause
