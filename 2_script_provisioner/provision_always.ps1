Write-Host "Running external provsioner"

$text = @"
The vagrant external provisioner created this file on $(Get-Date)

This file is updated every time the machine is restarted.
"@

 $text | Out-File -FilePath 'c:\vagrant-was-here-4.txt'