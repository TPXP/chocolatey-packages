$ErrorActionPreference = 'Stop';

Get-AppxPackage -Name *FluentTerminal* | Remove-AppxPackage -AllUsers
& certutil -delstore TrustedPeople 1ec0504f23d8f58f4b2cbe942f41d279
Remove-Item -Path "hkcu:\Software\Classes\Directory\shell\Open Fluent Terminal here" -Force -Recurse
Remove-Item -Path "hkcu:\Software\Classes\Directory\Background\shell\Open Fluent Terminal here" -Force -Recurse
Remove-Item -Path "hkcu:\Software\Classes\Directory\LibraryFolder\shell\Open Fluent Terminal here" -Force -Recurse
