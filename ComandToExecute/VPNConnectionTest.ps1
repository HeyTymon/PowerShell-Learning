Clear-Host

$commandArray = Get-Content -Path $PSScriptRoot
Start-Transcript -Path $PSScriptRoot

$commandArray | % { Invoke-Expression $_ } 

Stop-Transcript