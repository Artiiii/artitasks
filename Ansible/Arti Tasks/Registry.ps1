
$cred= Get-Credential
invoke-Command -ComputerName "ip address of server" -Credential $cred -ScriptBlock {Get-Item “HKLM:\Software\Microsoft\Windows\CurrentVersion\Run”}

 