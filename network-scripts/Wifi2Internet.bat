@if (1==1) @if(1==0) @ELSE
@echo off&SETLOCAL ENABLEEXTENSIONS
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"||(
    cscript //E:JScript //nologo "%~f0"
    @goto :EOF
)
echo.Setting WiFi configuration to DHCP...
netsh interface ip set address name="Wireless Network Connection" dhcp
echo.Setting DNS configuration to DHCP...
netsh interface ipv4 set dnsservers "Wireless Network Connection" dhcp
netsh interface ip show config
pause
@goto :EOF
@end @ELSE
ShA=new ActiveXObject("Shell.Application")
ShA.ShellExecute("cmd.exe","/c \""+WScript.ScriptFullName+"\"","","runas",5);
@end
