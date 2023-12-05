#New-Website -Name "twitter" -port 80 -HostHeader "twitter.local" -PhysicalPath "C:\inetpub\wwwroot\twitter"

Add-DnsServerPrimaryZone -Name "test.local" -ZoneFile "test.local.dns"

Add-DnsServerResourceRecordA -ZoneName "test.local" -Name "." -IPv4Address "127.0.0.1"

Add-DnsServerResourceRecordA -ZoneName "test.local" -Name "www" -IPv4Address "127.0.0.1"

#Add-DnsServerResourceRecordCName -ZoneName "test.local" -Name "." -HostNameAlias "www"

#curl http://twitter.local/

#New-WebApplication -Name "tweet" -Site "twitter" -PhysicalPath "C:\inetpub\wwwroot\twitter\tweet"

#curl http://twitter.local/tweet/

#New-WebVirtualDirectory -Site "twitter" -Application "tweet" -Name "twitterbackup" -PhysicalPath "C:\twitterbackup"

#curl http://twitter.local/tweet/backup/

#oracle

New-Item -ItemType Directory -Path "C:\inetpub\wwwroot\oracle" -Verbose

Set-Content -Path "C:\inetpub\wwwroot\oracle\index.html" -Value "<html><body><h1>Oracle Site</h1></body></html>" -Verbose

Add-DnsServerPrimaryZone -Name "oracle.local" -ZoneFile "oracle.local.dns"

Add-DnsServerResourceRecordA -ZoneName "oracle.local" -Name "." -IPv4Address "127.0.0.1"

Add-DnsServerResourceRecordA -ZoneName "oracle.local" -Name "www" -IPv4Address "127.0.0.1"

New-Website -Name "oracle" -port 80 -HostHeader "oracle.local" -PhysicalPath "C:\inetpub\wwwroot\oracle" -Verbose

New-WebBinding -Name "oracle" -port 80 -HostHeader "www.oracle.local" -Verbose

curl http://oracle.local/

curl http://www.oracle.local/

New-Item -ItemType Directory -Path "C:\inetpub\wwwroot\oracle\database"

Set-Content -Path "C:\inetpub\wwwroot\oracle\database\index.html" -Value "<html><body><h1>Oracle Database Application</h1></body></html>" -Verbose

New-WebApplication -Name "database" -Site "oracle" -PhysicalPath "C:\inetpub\wwwroot\oracle\database"

curl http://oracle.local/database/

New-Item -ItemType Directory -Path "C:\oraclebackup"

Set-Content -Path "C:\oraclebackup\index.html" -Value "<h2>Oracle database backup virtual directory</h2>"

New-WebVirtualDirectory -Site "oracle" -Application "database" -Name "oraclebackup" -PhysicalPath "C:\oraclebackup"

curl http://oracle.local/database/oraclebackup