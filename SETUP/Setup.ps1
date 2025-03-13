Write-Host "Welcome to the Windows 10/11 Installation Script!" -ForegroundColor Cyan
Write-Host "This script will start the Python installer in a few moments."
Read-Host "Press ENTER to continue..."

$exePath = "assets\python-3.13.2-amd64.exe"

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
$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys(" ")
Start-Sleep -Seconds 1
$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{ENTER}")

Start-Sleep -Seconds 60

$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{ENTER}")

Write-Host "This script will start the GIT installer in a few moments."
Read-Host "Press ENTER to continue..."