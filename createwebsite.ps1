Import-Module WebAdministration

$websitename = "verysecure"
$websitepath = "C:\inetpub\wwwroot\verysecure"
$domain = "verysecure.local"

New-Item -Path "C:\inetpub\wwwroot\verysecure" -ItemType Directory -Force

Copy-Item -Path "C:\inetpub\wwwroot\secure\index.html" -Destination "C:\inetpub\wwwroot\verysecure\index.html"

Add-DnsServerPrimaryZone -Name $domain -ZoneFile "verysecure.local.dns"

Add-DnsServerResourceRecordA -ZoneName $domain -Name "." -IPv4Address "127.0.0.1"

Add-DnsServerResourceRecordCName -ZoneName $domain -Name "www" -HostNameAlias "www.verysecure.local"

New-Website -Name $websitename -Port 80 -HostHeader $domain -PhysicalPath $websitepath

Start-Website -Name $websitename

Get-Website | Where-Object { $_.Name -eq $websitename }

curl $domain

cd "C:\Program Files\OpenSSL-Win64\bin"

openssl genpkey -algorithm RSA -out verysecure.key -aes256

openssl req -x509 -new -key verysecure.key -out verysecure.crt -days 365 -subj "/CN=verysecure.local"

openssl pkcs12 -export -out verysecure.pfx -inkey verysecure.key -in verysecure.crt

#Start-Process -FilePath "C:\Program Files\OpenSSL-Win64\bin\openssl.exe" -ArgumentList "genpkey -algorithm RSA -out verysecure.key -aes256"

#Start-Process -FilePath "C:\Program Files\OpenSSL-Win64\bin\openssl.exe" -ArgumentList "req -x509 -new -key verysecure.key -out verysecure.crt -days 365 -sub '/CN=verysecure.local'" -Verbose

#Start-Process -FilePath "C:\Program Files\OpenSSL-Win64\bin\openssl.exe" -ArgumentList "pkcs12 -export -out verysecure.pfx -inkey verysecure.key -in verysecure.crt"





