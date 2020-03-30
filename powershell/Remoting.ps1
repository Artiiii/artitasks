Set-Item WSMan:localhost\client\trustedhosts -value "ip address or domain name"
Enable-PSRemoting
$cred = Get-Credential 
$sess = New-PSSession -ComputerName "ip address of server" -Credential $cred
$Excludefile = "path of vspcc file"
Copy-Item -Path "source path" -Destination "dest path" -Exclude $Excludefile -ToSession $sess -Recurse 



