New-SelfSignedCertificate -DnsName "mycertdns" -CertStoreLocation "cert:\LocalMachine\My"
$cred = Get-credential 
$sess = New-PSSession -ComputerName "ip address of server" -Credential $cred
$pathcert = "Cert:\LocalMachine\My"
Get-ChildItem -Path $pathcert 
$thumbprint= "thumbprintofcert"
$cert = (Get-ChildItem -Path $certpath\$thumbprint)
Export-Certificate -Cert $cert -FilePath "path to be extractedr"
copy-item -Path "path of extracted cert" -Destination "path of cert to be copied" -ToSession $sess -Recurse



