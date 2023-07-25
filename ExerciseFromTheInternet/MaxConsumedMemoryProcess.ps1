Clear-Host

$processList = Get-Process
$uniqueProcessList = [System.Collections.ArrayList]@()
$maxMemory = -1
$maxMemoryName = ""

<#
foreach ($process in $processList) {
    
    #Write-Host Process: $process.Name

    if(!($uniqueProcessList.Contains($process.Name))) {
        $uniqueProcessList.Add($process.Name)
        Clear-Host
    }

    if($process.PM -gt $maxMemory) {
        $maxMemory = $process.PM
        $maxMemoryName = $process.Name
    }
}
#>


$processList | %{
    if(!($uniqueProcessList.Contains($_.Name))) {
        $uniqueProcessList.Add($_.Name)
        Clear-Host
    }

    if($_.PM -gt $maxMemory) {
        $maxMemory = $_.PM
        $maxMemoryName = $_.Name
    }

 }


Write-Host Total number of processes is $processList.Count
Write-Host Numbe of unique processes is $uniqueProcessList.Count
Write-Host Max consumed memory is $maxMemory by the $maxMemoryNamemaxMemory by the $maxMemoryName