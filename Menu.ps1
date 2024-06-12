Write-Host  -ForegroundColor Yellow "Starting Custom OSDCloud ..."
cls
Write-Host "===================== Main Menu =======================" -ForegroundColor Yellow
Write-Host "===================== Written by =======================" -ForegroundColor Yellow
Write-Host "================ www.brookspeppin.com =================" -ForegroundColor Yellow
Write-Host "====================@brookspeppin =====================" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "1: Zero-Touch Win10 22H2 | English | Pro (Older Machines)"-ForegroundColor Yellow
Write-Host "2: Zero-Touch Win11 23H2 | English | Pro (Newer Machines)" -ForegroundColor Yellow
Write-Host "3: I'll select it myself"-ForegroundColor Yellow
Write-Host "4: Exit`n"-ForegroundColor Yellow
$input = Read-Host "Please make a selection"

Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Import-Module OSD -Force
Install-Module OSD -Force

switch ($input)
{
    '1' { Start-OSDCloud -OSLanguage en-us -OSVersion 'Windows 10' -OSBuild 22H2 -OSEdition Pro -ZTI } 
    '2' { Start-OSDCloud -OSLanguage en-us -OSVersion 'Windows 11' -OSBuild 23H2 -OSEdition Pro -ZTI } 
    '3' { Start-OSDCloud	} 
    '4' { Exit		}
}

wpeutil reboot
