Write-Host "Running external provsioner"
"The vagrant external provisioner created this file on $(Get-Date)" |
    Out-File -FilePath 'c:\vagrant-was-here-3.txt'