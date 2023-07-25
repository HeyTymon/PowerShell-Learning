Clear-Host

$folderPath = $PSScriptRoot
$filePathList = Get-Content -Path "$PSScriptRoot\_fileNames.txt"

foreach ($fileName in $filePathList) {
    $filePath = Join-Path $folderPath "$fileName.txt"

    if (Test-Path $filePath) {
        Write-Host "File '$fileName' already exists!" -f Yellow
    } else {
        New-Item -Path $filePath -ItemType File
        Write-Host "File '$fileName' created" -f Green
    }
}
