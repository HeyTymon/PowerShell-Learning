Clear-Host

Get-Service | Select-Object -Property Name,Status | Where-Object {$_.Status -eq "Stopped"}

Write-Output `n

Get-Service | Select-Object -Property Name | Where-Object {$_.Name -Like "A*"}

Write-Output `n

Get-Service | Select-Object -Property Name | Where-Object {$_.StartType -eq "Automatic"}

Write-Output `n

#Restart-Service -Name Winmgmt

Get-Service | Select-Object -Property Name | Out-File "$PSScriptRoot\services.txt"

Get-Service | Select-Object -Property Name,Status,StartType | ConvertTo-Html | Out-File "$PSScriptRoot\services.html"