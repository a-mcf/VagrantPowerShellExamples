# Provision with DSC
In this example, the virtual machine is provisioned with DSC. IIS is installed and a "hello world" web page
is written into the folder. The MOF is generated on the host, and dropped into the Vagrant shared folder.

## Notes
- Because the image's size has been minimized by removing features from the install cache, they must be downloaded
from Microsof using features on demand. This can make the speed of the operation vary depending on the time of day and other factors.
- The configuration is generated externally on the host, so PowerShell v5+ must be installed on the host. I haven't tested this method on non-Windows operating systems.



