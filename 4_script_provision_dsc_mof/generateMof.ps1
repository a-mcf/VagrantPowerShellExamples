Set-Location $PSScriptRoot
. .\myConfig.ps1
MyConfig -OutputPath (Join-Path -Path $PSScriptRoot -ChildPath "mof")