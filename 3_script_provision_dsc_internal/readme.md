# Provision with DSC
In this example, the virtual machine is provisioned with DSC. IIS is installed and a "hello world" web page
is written into the folder. The DSC script is run inside of the virtual machine, so PowerShell does not have to be installed on the host.

## Scenario
- Switch into the machines folder and run `vagrant up`.
- Verify that IIS is installed by either loading the GUI and visitng the site in IE, or by using Invoke-WebRequest.
```
Invoke-Webrequest -UseBasicParsing -Uri http://localhost | Select-Object -ExpandProperty RawContent
```

## Notes
- Because the image's size has been minimized by removing features from the install cache, they must be downloaded
from Microsof using features on demand. This can make the speed of the operation vary depending on the time of day and other factors.
- All DSC scripts are run internally, so PowerShell does not need to be 
installed on the host operating system.




