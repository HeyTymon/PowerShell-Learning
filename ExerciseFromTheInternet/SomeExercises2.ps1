Clear-Host

Get-Process | Where-Object {$_.Name -like "A*"}

Write-Output `n

Get-Process | Where-Object {$_.Name -eq "svchost" -and $_.PM -gt 10000}