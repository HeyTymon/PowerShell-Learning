Clear-Host

$folderPath = Read-Host "Folder path: "
[int32]$daysModified = Read-Host "Modified in how many days: "
$fileExtension = Read-Host "File extension (without dot): "

$intType = 1

if($daysModified.GetType() -eq $intType.GetType()) { 
    $sinceDate = (Get-Date).AddDays(-$daysModified)
} else {
    Write-Host Wrong days input 
    return
}

if(Test-Path -Path $folderPath) {
    $files = Get-ChildItem -Path $folderPath -Recurse | 
    Where-Object { $_.Name -like "*$fileExtension" -and $_.LastWriteTime -ge $sinceDate} 
} else {
    Write-Host Folder path not found
    return
}

if($files.Length -gt 0) {
    Write-Host `n
    $files | % {
        Write-Host $_.FullName
    }
} else {
    Write-Host Files not found
}





