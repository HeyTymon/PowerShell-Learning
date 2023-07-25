Clear-Host

[long]$minSize = Read-Host "Min file size (B): "
[long]$maxSize = Read-Host "Max file size (B): "

if($minSize -gt $maxSize) {
    $maxSize = $minSize + 1
} 

Get-ChildItem -Recurse | Where-Object { $_.Length -gt $minSize -and $_.Length -lt $maxSize } | Out-GridView