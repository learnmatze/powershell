Import-Module DhcpServer

Get-NetAdapter

$dhcpservername = 'dc01.schoberm.local'

$bindings = Get-DhcpServerv4Binding -ComputerName $dhcpservername

$bindings | Format-Table -AutoSize

Restart-Service DHCPServer

Set-DhcpServerv4Binding -BindingState $True -InterfaceAlias "Ethernet Internal"


