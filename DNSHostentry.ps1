#$dnsserver = "DC01"
#$zonename = "schoberm.local"
#$hostname = "DC03"
#$ipaddress = "192.168.1.8"
#Add-DnsServerResourceRecordA -ZoneName $zonename -Name $hostname -IPv4Address $ipaddress -ComputerName $dnsserver

$dnsserver = "DC01"
$zonename = "schoberm.local"
$hostname = "DC03"
$ipaddress = "192.168.1.8"

Add-DnsServerResourceRecordA -ZoneName $zonename -Name $hostname 
-IPv4Address $ipaddress -ComputerName $dnsserver -Verbose







#$dnsserver = "DC01"
#$zonename = "1.168.192.in-addr.arpa"
#$lastoctet = "8"
#$hostname = "DC03.schoberm.local"

#Add-DnsServerResourceRecordPtr -ZoneName $zonename -Name $lastoctet -PtrDomainName $hostname -ComputerName $dnsserver 

