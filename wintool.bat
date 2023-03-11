@echo off
color 4
set pass=mmas2005
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/c cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )
:pass
color b
echo ##################################################
echo #               Made by Moemen_N7                #
echo #          https://github.com/Moemen-N7/         #
echo ##################################################
echo Thanks For Using My tool  :)
echo ############################

set /p password=Enter password:
if "%password%"=="%pass%" (

    goto menu
) else (
cls
echo Invalid pass. Please try again.
pause
cls
goto pass
cls

)

:menu
color 4
echo ##################################################
echo #               Made by Moemen_N7                #
echo #          https://github.com/Moemen-N7/         #
echo ##################################################
echo Thanks For Using My tool  :)
cls
echo ##################################################
echo #               Made by Moemen_N7                #
echo #          https://github.com/Moemen-N7/         #
echo ##################################################
echo Thanks For Using My tool  :)
echo ############################
echo Please choose an option:
echo 1. Deny
echo 2. Grant
echo 3. About
echo 4. Temp cleaner
echo 5. Net fix
echo 6. Windows update fix
echo 7. San system
echo 8. Delete all bloatware
echo 9. Disable Windows updates
echo 10. Enable Windows updates
echo 11. Force Delete
echo 12. Download
echo 0. Exit

set /p choice=Enter choice:

if "%choice%"=="1" goto option1
if "%choice%"=="2" goto option2
if "%choice%"=="3" goto option3
if "%choice%"=="4" goto option4
if "%choice%"=="5" goto option5
if "%choice%"=="6" goto option6
if "%choice%"=="7" goto option7
if "%choice%"=="8" goto option8
if "%choice%"=="9" goto option9
if "%choice%"=="10" goto option10
if "%choice%"=="11" goto option11
if "%choice%"=="12" goto option12
if "%choice%"=="0" goto end
cls
echo Invalid choice. Please try again.
pause
goto menu

:option1
set /p file=Enter folder nu (Path:D:\move\): 
attrib +h +s "%file%"
icacls "%file%" /deny Everyone:M
icacls "%file%" /deny "%username%":R 
cls
echo All permissions removed.
pause
goto menu



:option2
set /p file=Enter folder nu (Path:D:\move\): 
icacls "%file%" /grant Everyone:M
icacls "%file%" /grant "%username%":R
attrib -h -s "%file%"
cls
echo All permissions Grant.
pause
goto menu

:option3
cls
color 3
echo ##################################################
echo #               Made by Moemen_N7                #
echo #          https://github.com/Moemen-N7/         #
echo ##################################################
echo Thanks For Using My tool  :)
echo ############################
start /max https://moemen.ga




pause
goto menu




:option4

del /s /f /q c:\windows\temp\*.*
rd /s /q c:\windows\temp
md c:\windows\temp
del /s /f /q C:\WINDOWS\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md %temp%
deltree /y c:\windows\tempor~1
deltree /y c:\windows\temp
deltree /y c:\windows\tmp
deltree /y c:\windows\ff*.tmp
deltree /y c:\windows\prefetch
deltree /y c:\windows\history
deltree /y c:\windows\cookies
deltree /y c:\windows\recent
deltree /y c:\windows\spool\printers
pause
goto menu


:option5
ipconfig /release
ipconfig /renew
arp -d *
nbtstat -R
nbtstat -RR
netsh advfirewall reset
netsh winsock reset
netsh int tcp reset
netsh int ip reset
ipconfig /flushdns
ipconfig /registerdns
pause
goto menu


:option6


net stop bits
net stop wuauserv
net stop appidsvc
net stop cryptsvc
Del "%ALLUSERSPROFILE%\Application Data\Microsoft\Network\Downloader\*.*"
rmdir %systemroot%\SoftwareDistribution /S /Q
rmdir %systemroot%\system32\catroot2 /S /Q
sc.exe sdset bits D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)
sc.exe sdset wuauserv D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;AU)(A;;CCLCSWRPWPDTLOCRRC;;;PU)
cd /d %windir%\system32

regsvr32.exe /s atl.dll
regsvr32.exe /s urlmon.dll
regsvr32.exe /s mshtml.dll
regsvr32.exe /s shdocvw.dll
regsvr32.exe /s browseui.dll
regsvr32.exe /s jscript.dll
regsvr32.exe /s vbscript.dll
regsvr32.exe /s scrrun.dll
regsvr32.exe /s msxml.dll
regsvr32.exe /s msxml3.dll
regsvr32.exe /s msxml6.dll
regsvr32.exe /s actxprxy.dll
regsvr32.exe /s softpub.dll
regsvr32.exe /s wintrust.dll
regsvr32.exe /s dssenh.dll
regsvr32.exe /s rsaenh.dll
regsvr32.exe /s gpkcsp.dll
regsvr32.exe /s sccbase.dll
regsvr32.exe /s slbcsp.dll
regsvr32.exe /s cryptdlg.dll
regsvr32.exe /s oleaut32.dll
regsvr32.exe /s ole32.dll
regsvr32.exe /s shell32.dll
regsvr32.exe /s initpki.dll
regsvr32.exe /s wuapi.dll
regsvr32.exe /s wuaueng.dll
regsvr32.exe /s wuaueng1.dll
regsvr32.exe /s wucltui.dll
regsvr32.exe /s wups.dll
regsvr32.exe /s wups2.dll
regsvr32.exe /s wuweb.dll
regsvr32.exe /s qmgr.dll
regsvr32.exe /s qmgrprxy.dll
regsvr32.exe /s wucltux.dll
regsvr32.exe /s muweb.dll
regsvr32.exe /s wuwebv.dll
netsh winsock reset
netsh winsock reset proxy
net start bits
net start wuauserv
net start appidsvc
net start cryptsvc
pause
goto menu

:option7


setlocal EnableDelayedExpansion

set log_file=C:\Users\moeme\OneDrive\Desktop\scan_results.txt

echo Scanning all files for .exe files...

for /r C:\ %%a in (*.exe) do (
    echo Scanning %%a...
    echo %date% %time% - Scanning %%a >> %log_file%
    "C:\Program Files\AV Program\avscanner.exe" /scan %%a >> %log_file%
)

echo Done.

pause
goto menu


:option8

echo Uninstalling bloatware...
echo This may take some time. Please be patient.
echo.

::Uninstalling 3D Builder
echo Uninstalling 3D Builder...
start /wait PowerShell -Command "Get-AppxPackage *3dbuilder* | Remove-AppxPackage"
echo.


::Uninstalling XboxApp
echo Uninstalling XboxApp...
start /wait PowerShell.exe -ExecutionPolicy Bypass -Command "Get-AppxPackage *XboxApp* | Remove-AppxPackage"
echo.


::Uninstalling Alarms & Clock
echo Uninstalling Alarms & Clock...
start /wait PowerShell -Command "Get-AppxPackage *windowsalarms* | Remove-AppxPackage"
echo.

::Uninstalling Calendar & Mail
echo Uninstalling Calendar & Mail...
start /wait PowerShell -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage"
echo.

::Uninstalling Camera
echo Uninstalling Camera...
start /wait PowerShell -Command "Get-AppxPackage *windowscamera* | Remove-AppxPackage"
echo.

::Uninstalling Get Help
echo Uninstalling Get Help...
start /wait PowerShell -Command "Get-AppxPackage *gethelp* | Remove-AppxPackage"
echo.

::Uninstalling Get Office
echo Uninstalling Get Office...
start /wait PowerShell -Command "Get-AppxPackage *officehub* | Remove-AppxPackage"
echo.

::Uninstalling Groove Music
echo Uninstalling Groove Music...
start /wait PowerShell -Command "Get-AppxPackage *zunemusic* | Remove-AppxPackage"
echo.

::Uninstalling Maps
echo Uninstalling Maps...
start /wait PowerShell -Command "Get-AppxPackage *windowsmaps* | Remove-AppxPackage"
echo.

::Uninstalling Microsoft News
echo Uninstalling Microsoft News...
start /wait PowerShell -Command "Get-AppxPackage *bingnews* | Remove-AppxPackage"
echo.

::Uninstalling Microsoft Solitaire Collection
echo Uninstalling Microsoft Solitaire Collection...
start /wait PowerShell -Command "Get-AppxPackage *solitairecollection* | Remove-AppxPackage"
echo.

::Uninstalling Movies & TV
echo Uninstalling Movies & TV...
start /wait PowerShell -Command "Get-AppxPackage *zunevideo* | Remove-AppxPackage"
echo.

::Uninstalling OneNote
echo Uninstalling OneNote...
start /wait PowerShell -Command "Get-AppxPackage *onenote* | Remove-AppxPackage"
echo.

::Uninstalling Paint 3D
echo Uninstalling Paint 3D...
start /wait PowerShell -Command "Get-AppxPackage *mspaint* | Remove-AppxPackage"
echo.

::Uninstalling Skype
echo Uninstalling Skype...
start /wait PowerShell -Command "Get-AppxPackage *skypeapp* | Remove-AppxPackage"
echo.

::Uninstalling Snip & Sketch
echo Uninstalling Snip & Sketch...
start /wait PowerShell -Command "Get-AppxPackage *Microsoft.ScreenSketch* | Remove-AppxPackage"
echo.

echo Bloatware removed.
pause
goto menu

:option9

@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f
sc stop wuauserv
sc config wuauserv start= disabled
echo Windows Update has been fully disabled.
pause

pause
goto menu

:option10

@echo off
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 0 /f
sc config wuauserv start= auto
sc start wuauserv
echo Windows Update has been fully enabled.
pause

pause
goto menu



:option11



set /p file="Enter file or folder path: "

if exist "%file%" (
    echo Attempting to delete "%file%"...
    attrib -r -a -s -h "%file%" >nul 2>&1
    takeown /f "%file%" /r /d y >nul 2>&1
    icacls "%file%" /grant administrators:F /t >nul 2>&1
    rd /s /q "%file%" >nul 2>&1 || del /f /q "%file%" >nul 2>&1 || (
        echo Unable to delete "%file%". Giving ownership to current user and trying again...
        takeown /f "%file%" /r /d y >nul 2>&1
        icacls "%file%" /grant administrators:F /t >nul 2>&1
        rd /s /q "%file%" >nul 2>&1 || del /f /q "%file%" >nul 2>&1 || (
            echo Unable to delete "%file%". Moving to recycle bin...
            move "%file%" "%USERPROFILE%\AppData\Local\Microsoft\Windows\Temporary Internet Files"
        )
    )
    if exist "%file%" (
        echo You don't have sufficient permissions to delete "%file%". Please take ownership of the file or folder and try again.
    )
) else (
    echo File or folder "%file%" does not exist.
)

pause
goto menu


:option12



@echo off
set /p vlc=Download VLC media player? (y/n)
if /i "%vlc%"=="y" (
    powershell -Command "Invoke-WebRequest -Uri 'https://get.videolan.org/vlc/3.0.18/win32/vlc-3.0.18-win32.exe' -OutFile 'vlc-download.html'"
    for /f "delims=" %%a in ('type vlc-download.html ^| findstr /i "http.*vlc-[0-9].*win64.exe"') do set url=%%a
    powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile 'vlc.exe'"
    del vlc-download.html
  echo IDM downloaded successfully.
) else (
    echo VLC media installation skipped.
)


set /p winrar=Download WinRAR? (y/n)
if /i "%winrar%"=="y" (
    powershell -Command "Invoke-WebRequest -Uri 'https://www.rarlab.com/download.htm' -OutFile 'winrar-download.html'"
    for /f "delims=" %%a in ('type winrar-download.html ^| findstr /i "http.*wr64.*.exe"') do set url=%%a
    powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile 'winrar.exe'"
    del winrar-download.html
  echo IDM downloaded successfully.
) else (
    echo WinRAR installation skipped.
)
set /p idm=Download IDM? (y/n)
if /i "%idm%"=="y" (
    powershell -Command "Invoke-WebRequest -Uri 'https://www.internetdownloadmanager.com/download.html' -OutFile 'idm-download.html'"
    for /f "delims=" %%a in ('type idm-download.html ^| findstr /i "http.*idman.*.exe"') do set url=%%a
    powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile 'idm.exe'"
    del idm-download.html
  echo IDM downloaded successfully.
) else (
    echo IDM installation skipped.
)

set /p telegram=Download Telegram? (y/n)
if /i "%telegram%"=="y" (
    powershell -Command "Invoke-WebRequest -Uri 'https://desktop.telegram.org/' -OutFile 'telegram-download.html'"
    for /f "delims=" %%a in ('type telegram-download.html ^| findstr /i "https.*telegram.*setup.*exe"') do set url=%%a
    powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile 'telegram.exe'"
    del telegram-download.html
  echo IDM downloaded successfully.
) else (
    echo Telegram installation skipped.
)

set /p whatsapp=Download WhatsApp? (y/n)
if /i "%whatsapp%"=="y" (
    powershell -Command "Invoke-WebRequest -Uri 'https://www.whatsapp.com/download/' -OutFile 'whatsapp-download.html'"
    for /f "delims=" %%a in ('type whatsapp-download.html ^| findstr /i "https.*websetup.*exe"') do set url=%%a
    powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile 'whatsapp.exe'"
    del whatsapp-download.html
  echo IDM downloaded successfully.
) else (
    echo WhatsApp installation skipped.
)

set /p discord=Download Discord? (y/n)
if /i "%discord%"=="y" (
    powershell -Command "Invoke-WebRequest -Uri 'https://discord.com/download' -OutFile 'discord-download.html'"
    for /f "delims=" %%a in ('type discord-download.html ^| findstr /i "https.*DiscordSetup.*exe"') do set url=%%a
    powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile 'discord.exe'"
    del discord-download.html
  echo IDM downloaded successfully.
) else (
    echo Discord installation skipped.
)






pause
goto menu


:end
cls
color 2
echo ##################################################
echo #               Made by Moemen_N7                #
echo #          https://github.com/Moemen-N7/         #
echo ##################################################
echo Thanks For Using My tool  :)
echo ############################
echo Exiting...
pause
