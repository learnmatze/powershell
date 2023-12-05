
$password = ConvertTo-SecureString "12Hallo34!" -AsPlainText -Force

New-AdUser -Name "VertriebAdmin" -SamAccountName "VertriebAdmin" -UserPrincipalName "vertriebadmin@schoberm.local" -AccountPassword $password -Enabled $true


New-ADGroup -Name "Marketing" -SamAccountName "Marketing" -GroupCategory Security -GroupScope Global 
#-Path "OU=Gruppen,DC=schoberm,DC=local"

Add-ADGroupMember -Identity "Marketing" -Members "MarketingAdmin"

Add-ADGroupMember -Identity "Vertrieb" -Members "VertriebAdmin"

New-ADGroup -Name "Vertrieb" -SamAccountName "Vertrieb" -GroupCategory Security -GroupScope Global 
#-Path "OU=Gruppen,DC=schoberm,DC=local"

Add-ADGroupMember -Identity "Vertrieb" -Members "VertriebAdmin"


