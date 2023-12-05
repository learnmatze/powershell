Install-Module -Name PSWindowsUpdate -Force -AllowClobber

Import-Module PSWindowsUpdate

Get-HotFix

Get-WindowsUpdate

Get-WindowsUpdate -Title "Security"

Get-WindowsUpdate -Category "DefinitionUpdates"

Get-WindowsUpdate

$updateKB = 'KB890830'

Install-WindowsUpdate -KBArticleID $updateKB

$updateKB = 'KB5010523'

Download-WindowsUpdate -KBArticleID $updateKB

Install-WindowsUpdate -KBArticleID $updateKB

Get-Hotfix

Get-WindowsUpdate

Install-WindowsUpdate -AcceptAll
