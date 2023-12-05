#Container Windows Feature installieren

Install-PackageProvider -Name NuGet
Install-Module DockerMsftProvider -Force
#Install-Package Docker -ProviderName DockerMsftProvider -Force

#https://learn.microsoft.com/en-us/virtualization/windowscontainers/quick-start/set-up-environment?tabs=dockerce#windows-server-1

Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/microsoft/Windows-Containers/Main/helpful_tools/Install-DockerCE/install-docker-ce.ps1" -o install-docker-ce.ps1
.\install-docker-ce.ps1