# Provision with DSC
In this example, the virtual machine is provisioned with DSC. IIS is installed and a "hello world" web page
is written into the folder.

## Notes
- Because the image's size has been minimized by removing features from the install cache, they must be downloaded
from Microsof using features on demand. This can make the speed of the operation vary depending on the time of day and other factors.
- All DSC scripts are run internally, so PowerShell does not need to be 
installed on the host operating system.



