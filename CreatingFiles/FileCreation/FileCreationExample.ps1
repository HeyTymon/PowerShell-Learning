$fixedFilePath = $PSScriptRoot

if (Test-Path $fixedFilePath) {
    Write-host "File '$fixedFilePath' already exists!" -f Yellow
}
else {
    New-Item -Path $fixedFilePath -ItemType Directory
    Write-host "New File '$fixedFilePath' Created!" -f Green
}

for ($i = 0; $i -lt 10; $i++) {
    $filePath = Join-Path $PSScriptRoot "file$i.txt"

    if (Test-Path $filePath) {
        Write-host "File '$filePath' already exists!" -f Yellow
    }
    else {
        New-Item -Path $filePath -ItemType File
        Write-host "New File '$filePath' Created!" -f Green
    }
}

Write-Host "`n"

for ($i = 0; $i -lt 10; $i++) {
    $filePath = Join-Path $PSScriptRoot "file$i.txt"

    if (Test-Path $filePath) {
        Remove-Item -Path $filePath
        Write-host "File 'file$i.txt' removed!" -f Green
    }
    else {
        Write-Host "This File does not exist!" -f Red
    }    
}

Write-Host "`n"

ls -Path $PSScriptRoot
