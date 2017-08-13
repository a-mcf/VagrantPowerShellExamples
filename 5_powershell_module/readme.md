# PowerShell Module Integration
In this example, a VagrantFile is included in the root of the PowerShell module. 
When the machine is provisioned, first Pester is installed, then a symbolic link is created to the first Path in 
the PSModulePath environmental variable so that the module can be dynamically imported into your session

After, pester runs tests against everything in c:\vagrant, which is actually your module directory.

## Use
You can modify this for your own use by changing the `$powershell_module_name = "vagrantDemo"`
at the top of the VagrantFile to match your module name. This could easily be included in a Plaster template.

After it's been customized, run 'vagrant up', and you should be all set.