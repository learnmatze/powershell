<# 
    *************************************
    Betriebssystem Informationen auslesen
    *************************************
#>

$windows = Get-WmiObject -Class Win32_OperatingSystem

$installdate = [System.Management.ManagementDateTimeConverter]::ToDateTime($windows.InstallDate)

Write-host "Betreibssystem: $($windows.Caption)"

Write-host "Installiert am: $($installdate)"

Write-host "Freier Speicher auf Systemlaufwerk: $($windows.FreePhysicalMemory)"

# $windowsKey = (Get-WmiObject -Query "SELECT * FROM SoftwareLicensingProduct").OA3xOriginalProductKey

$windowsKey = Get-CimInstance -ClassName SoftwareLicensingService | Select-Object -ExpandProperty OA3xOriginalProductKey

#Write-host "Windows-key: $windowsKey"

$computerconfiguration = Get-ComputerInfo

# $computerconfiguration.WindowsVersion

Write-host "Windows-Version: $($computerconfiguration.WindowsVersion)"

Write-host "Bios Firmware-Typ: $($computerconfiguration.BiosManufacturer)"

Write-host "Bios Hersteller: $($computerconfiguration.BiosFirmwareType)"

Write-host "Keyboard-Layout: $($computerconfiguration.KeyboardLayout)"

Write-host "Timezone: $($computerconfiguration.TimeZone)"

Write-host "Hypervisor: $($computerconfiguration.HyperVisorPresent)"

Write-host "Betriebssystem Product Type: $($computerconfiguration.OsProductType)"

Write-host "Betriebssystem Status: $($computerconfiguration.OsStatus)"

Write-host "Installation Date: $($computerconfiguration.OsInstallDate)"

Write-host "Betriebssystem Name: $($computerconfiguration.OsName)"

Write-host "Betriebssystem Version: $($computerconfiguration.OsVersion)"

Write-host "Betriebssystem Sprache: $($computerconfiguration.OsLanguage)"

Write-host "Architektur: $($computerconfiguration.OsArchitecture)"

Write-host "Anzahl der Prozesse: $($computerconfiguration.OsNumberOfProcesses)"

Write-host "Workgroup: $($computerconfiguration.CsWorkgroup)"

Write-host "Domain: $($computerconfiguration.CsDomain)"

Write-host "Windows-key: $windowsKey"
