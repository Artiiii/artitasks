Install-Module PSExcel
Import-Module PSExcel
$Filepath= "Path of the FirstFlight.XLSX file"
$import= Import-XLSX -Path $Filepath
$import | ft
$column = Read-Host "Enter the column which you want to filter"
$colvalue= Read-Host "Enter the column value you need ton filter"
$output= Read-Host "Enter the path of the file where you want to store the filtered file"
$import | Where-Object {$_.$column -eq $colvalue} | Export-XLSX  -path $output

