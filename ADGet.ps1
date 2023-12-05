
Get-Help Get-ADUser

Get-AdUser -Filter "Name -like 'f*'"

$password = ConvertTo-SecureString "12Hallo34!" -AsPlainText -Force

New-AdUser -Name "Fritz Huber" -SamAccountName "fritz.huber" 
 -UserPrincipalName "fritz.huber@schoberm.local" -AccountPassword $password -Enabled $true




