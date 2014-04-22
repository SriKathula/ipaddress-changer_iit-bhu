@echo off
cls
rem pause
set Inte="Local Area Connection"
rem set in=NetSh Interface IPv4 Show Interfaces^|findstr /v  disconnected | findstr net
for /f "delims=" %%a in ('NetSh Interface IPv4 Show Interfaces^| findstr "net"') do @set myvar=%%a
rem echo %myvar%
if "%myvar%" neq [] goto abc
goto start
:abc
rem interface is Windows8
set Inte="Ethernet"
goto start
:start
echo.
echo 1. C V Raman
rem 10.9.1-0
echo 2. De 
rem 10.8.10-11
echo 3. DhanrajGiri 
rem 10.9.10-11
echo 4. Limbdi 
rem 10.8.1-0
echo 5. Morvi 
rem 10.9.20-21
echo 6. Rajputana 
rem 10.8.40-41
echo 7. Vivekananda
 rem 10.8.20-31
echo 8. Vishvesaraya 
rem 10.8.50-51
echo 9. Vishwakarma
 rem 10.8.30-31
echo 10. DCHP
echo 11. Exit
set /p choice=Type your hostel 
if  '%choice%'=='1' goto cv
if  '%choice%'=='2' goto de
if  '%choice%'=='3' goto dg
if  '%choice%'=='4' goto lc
if  '%choice%'=='5' goto mv
if  '%choice%'=='6' goto rj
if  '%choice%'=='7' goto vn
if  '%choice%'=='8' goto vy
if  '%choice%'=='9' goto vk
if  '%choice%'=='10' goto dhcp
if  '%choice%'=='11' goto end
echo Please try again
goto start

:cv
set /a tmp=%random% %% 1-0
set host=10.9.%tmp%
set /a r=%random% %% 244 + 10
set ip=%host%.%r%
set net=255.255.255.0
set gate=%host%.1
goto stat

:de
set /a tmp=%random% %% 1 + 10
set host=10.8.%tmp%
set /a r=%random% %% 244 + 10
set ip=%host%.%r%
set net=255.255.255.0
set gate=%host%.1
goto stat

:dg
set /a tmp=%random% %% 1 + 10
set host=10.9.%tmp%
set /a r=%random% %% 244 + 10
set ip=%host%.%r%
set net=255.255.255.0
set gate=%host%.1
goto stat

:lc
set /a tmp=%random% %% 1-0
set host=10.8.%tmp%
set /a r=%random% %% 244 + 10
set ip=%host%.%r%
set net=255.255.255.0
set gate=%host%.1
goto stat

:mv
set /a tmp=%random% %% 1 + 20 
set host=10.9.%tmp%
set /a r=%random% %% 244 + 10
set ip=%host%.%r%
set net=255.255.255.0
set gate=10.9.%tmp%.1
goto stat

:rj
set /a tmp=%random% %% 1 + 40
set host=10.8.%tmp%
set /a r=%random% %% 244 + 10
set ip=%host%.%r%
set net=255.255.255.0
set gate=%host%.1
goto stat

:vn
set /a tmp=%random% %% 1 + 20
set host=10.8.%tmp%
set /a r=%random% %% 244 + 10
set ip=%host%.%r%
set net=255.255.255.0
set gate=%host%.1
goto stat

:vy
set /a tmp=%random% %% 1+ 50
set host=10.8.%tmp%
set /a r=%random% %% 244 + 10
set ip=%host%.%r%
set net=255.255.255.0
set gate=%host%.1
goto stat

:vk
set /a tmp=%random% %% 1 + 30
set host=10.8.%tmp%
set /a r=%random% %% 244 + 10
set ip=%host%.%r%
set net=255.255.255.0
set gate=%host%.1
goto stat

:stat
netsh interface ip set address "%inte%" static %ip% %net% %gate% 1
rem netsh int ip show config 
pause 
goto end

:dhcp
rem netsh int ip set address name = "Ethernet" source = dhcp
ipconfig /renew "%inte%"
pause
goto end

:end
Script END!

