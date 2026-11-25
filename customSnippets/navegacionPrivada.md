
# aplicar incognito e inprivate
```powershell
powershell.exe -NoProfile -Command "Start-Process cmd.exe -Verb RunAs -ArgumentList '/k reg add HKLM\SOFTWARE\Policies\Google\Chrome /v IncognitoModeAvailability /t REG_DWORD /d 2 /f /reg:64 && reg add HKLM\SOFTWARE\Policies\Google\Chrome /v BackgroundModeEnabled /t REG_DWORD /d 0 /f /reg:64 && reg add HKLM\SOFTWARE\Policies\Microsoft\Edge /v InPrivateModeAvailability /t REG_DWORD /d 2 /f /reg:64 && reg add HKLM\SOFTWARE\Policies\Microsoft\Edge /v BackgroundModeEnabled /t REG_DWORD /d 0 /f /reg:64 && reg add HKLM\SOFTWARE\Policies\Microsoft\Edge /v StartupBoostEnabled /t REG_DWORD /d 0 /f /reg:64 && echo POLITICAS APLICADAS CORRECTAMENTE & taskkill /F /IM chrome.exe & taskkill /F /IM msedge.exe & pause'"
```


# verificar
```powershell
powershell.exe -NoProfile -NoExit -Command "reg.exe query HKLM\SOFTWARE\Policies\Google\Chrome /reg:64; reg.exe query HKLM\SOFTWARE\Policies\Microsoft\Edge /reg:64"
```

