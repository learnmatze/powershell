Get-NetFirewallRule | Where-Object {($_.DisplayName -match "Datei- und Druckerfreigabe")} #-and ($_.Direction -eq "Inbound")

Get-NetFirewallRule | Where-Object {($_.DisplayName -match "Datei- und Druckerfreigabe") -and ($_.Direction -eq "Inbound")} #-and ($_.Protocol -eq "ICMPv4")}

Get-NetFirewallRule | Where-Object {($_.DisplayName -like "Datei- und Druckerfreigabe (Echoanforderung - ICMPv4 eingehend)")} | Set-NetFirewallRule -Enabled True

(Get-WmiObject -Class Win32_ComputerSystem).Workgroup

Get-NetFirewallRule | Where-Object {($_.DisplayName -like "Datei- und Druckerfreigabe (Echoanforderung - ICMPv4 eingehend)")} | Set-NetFirewallRule -Enabled True
