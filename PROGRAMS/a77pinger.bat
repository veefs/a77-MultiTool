@Echo off
chcp 65001
cls
color 5
title A77 Pinger

echo.
echo    db    8888P 8888P 
echo   dPYb     dP    dP  
echo  dPwwYb   dP    dP   
echo dP    Yb dP    dP                       
echo.
                                                                                
echo -------------------------------------
echo -       CTRL+C TO STOP PINGING      -
echo -------------------------------------
set /p IP=Enter IP=
color 4
:top
PING -n 1 %IP% | FIND "TTL="
title ::Pinging! %IP%
IF ERRORLEVEL 1 (echo [DEAD] %IP% [DEAD])
set /a num= (%Random%%%9)+1
color %num%
ping -t 2 0 10 127.0.0.1 >nul
GoTo top