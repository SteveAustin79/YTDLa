Write-Host ""
Write-Host ""
Write-Host ""
Write-Host "Welcome to the YTDLa Windows 10/11 Installation Script! - PART 3/3" -ForegroundColor Cyan
Write-Host ""
Write-Host "This script will install NodeJS in order to generate a PoToken automatically to prevent bot detection!"
Write-Host ""
Write-Host "Estimated duration: 2 Minutes"
Write-Host ""
Write-Host "DON'T TOUCH YOUR MOUSE OR KEYBOARD FOR 90 SECONDS, UNTIL PYTHON INSTALLATION WIZARD IS CLOSED!" -ForegroundColor Red
Write-Host ""
Read-Host "Press ENTER to continue..."

$exePath = "assets\node-v22.14.0-x64.msi"

# Start the installer
Start-Process -FilePath $exePath

# Wait a few seconds to ensure the window appears
Start-Sleep -Seconds 7

# Create WScript Shell object
$wshell = New-Object -ComObject WScript.Shell

$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{ENTER}")
Start-Sleep -Seconds 3

$wshell.SendKeys(" ")
Start-Sleep -Seconds 1
$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{ENTER}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{ENTER}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{ENTER}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{ENTER}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{ENTER}")

Start-Sleep -Seconds 3
$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{ENTER}")

Start-Sleep -Seconds 90


Write-Host ""

Start-Sleep -Seconds 1

Write-Host ""
Write-Host "Installation completed!"
Write-Host ""
Write-Host ""
Write-Host "Start now Setup2.ps script (right click - run with PowerShell)." -ForegroundColor Cyan
Write-Host ""
Read-Host "Press ENTER to close this window..."
