# Test An External PowerShell Module
It's possible to test a PowerShell module that lives in your development machine's path without
moving it into your vagrant project folder or hard coding a full system path by using symlinks 
on your host.

In example 5 we used symlinks inside of the VM, but this time we'll use them on the host
to expose our module to Vagrant. This may be useful in circumstances where the Vagrant box
itself is a large project, and you don't want to bundle that code.

There are a couple of ways we can approach this. 

## Option One
The first is to simply create a link to the module directory and use a Vagrant provisioner to copy the
module into a folder in the PSModule path on your Vagrant machine. The upside of this is that it's relatively
simple, the downside is that the module in the VM is only updated when you re-run the provisioner.

## Option Two
This is the option that will be demoed. It builds on the last option, but will use symbolic links on the
host and the guest to accomplish the work. As compared to option 5, this is far less portable, but
is still useful in a pinch.

You'll need to use mklink to create a symbolic link. This has to be performed by cmd.exe

For example, if your module lived under c:\source\MyModule, you can run the following command. It requires elevation:
```
cmd /c "mklink /D .\MyModule c:\source\MyModule"
```