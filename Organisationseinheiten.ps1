
Get-ADOrganizationalUnit -Filter { Name -like "Pe*" }

Add-ADGroupMember -Identity "Vetrieb" -Members "VertriebAdmin"

Add-ADGroupMember -Identity "Vertrieb" -Members "Vertrieb"


New-ADOrganizationalUnit -Name "Forschung" -Description "Forschungsabteilung" -Verbose

New-ADOrganizationalUnit -Name "ForschungPflanzen" -Description "Forschungsabteilung für Pflanzen" 
    -Path "OU=Forschung,DC=schoberm,DC=local" -Verbose

New-ADOrganizationalUnit -Name "Computer" -Description "Computer für Forschungsabteilung für Pflanzen" -Path "OU=ForschungPflanzen,OU=Forschung,DC=schoberm,DC=local" -Verbose

New-ADOrganizationalUnit -Name "Benutzer" -Description "Benutzer für Forschungsabteilung für Pflanzen" -Path "OU=ForschungPflanzen,OU=Forschung,DC=schoberm,DC=local" -Verbose

New-ADOrganizationalUnit -Name "Gruppen" -Description "Gruppen für Forschungsabteilung für Pflanzen" -Path "OU=ForschungPflanzen,OU=Forschung,DC=schoberm,DC=local" -Verbose

$pilze = "ForschungPilze"

New-ADOrganizationalUnit -Name $pilze -Description "Forschungsabteilung für Pilze" -Path "OU=Forschung,DC=schoberm,DC=local" -Verbose

New-ADOrganizationalUnit -Name "Computer" -Description "Computer für Forschungsabteilung für Pilze" -Path "OU=$pilze,OU=Forschung,DC=schoberm,DC=local" -Verbose

New-ADOrganizationalUnit -Name "Benutzer" -Description "Benutzer für Forschungsabteilung für Pilze" -Path "OU=$pilze,OU=Forschung,DC=schoberm,DC=local" -Verbose

New-ADOrganizationalUnit -Name "Gruppen" -Description "Gruppen für Forschungsabteilung für Pilze" -Path "OU=$pilze,OU=Forschung,DC=schoberm,DC=local" -Verbose


New-ADOrganizationalUnit -Name "Marketing" -Description "Marketingabteilung" -Verbose

$password = ConvertTo-SecureString "12Hallo34!" -AsPlainText -Force

New-AdUser -Name "MarketingUser" -SamAccountName "MarketingUser" -UserPrincipalName "MarketingUser@schoberm.local" -AccountPassword $password -Enabled $true -Path "OU=Marketing,DC=schoberm,DC=local"



New-ADOrganizationalUnit -Name "Vertrieb" -Description "Vertriebsabteilung" -Verbose

$password = ConvertTo-SecureString "12Hallo34!" -AsPlainText -Force

New-AdUser -Name "VetriebUser" -SamAccountName "VertriebUser" -UserPrincipalName "VertriebUser@schoberm.local" -AccountPassword $password -Enabled $true -Path "OU=Vertrieb,DC=schoberm,DC=local"

