Get-VMProcessor -VMName "Windows 11 pro"

Set-VMProcessor -VMName  "Windows 11 Development" -ExposeVirtualizationExtensions $true

Set-VMProcessor -VMName  "Windows 11 pro" -ExposeVirtualizationExtensions $true -Verbose
