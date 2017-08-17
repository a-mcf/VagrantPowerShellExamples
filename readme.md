# Vagrant for the PowerShell Developer

What follows is a set of notes and examples for use in demonstrating some use cases with Vagrant and Windows. These were intially demonstrated to the Cincinati PowerShell Users group on 8/17/2017.

## What is Vagrant

- Vagrant is an open source tool created by HashiCorp for rapidly creating portable, reproducible development environments.
- Supports Virtualbox, Hyper-V, and Docker out of the box, and many more through it’s pluggable provider system.
- Works by abstracting away the hypervisor.
- You interact with Vagrant through a configuration file and the ‘vagrant’ command.

## Configuration Notes

- You must install Vagrant and supported hypervisor.
- For this demo, we will use Virtualbox. Because it’s cross-platform, this will enable you to share your vagrant build with people running Windows, Mac, or Linux.
- If you have Hyper-V installed, you can’t run Virtualbox so long as it’s enabled. One excellent way around this is to create a boot profile that disables Hyper-V without uninstalling it. Scott Hansleman has an excellent [blog](http://www.hanselman.com/blog/SwitchEasilyBetweenVirtualBoxAndHyperVWithABCDEditBootEntryInWindows81.aspx) detailing how this is done.
- Being *NIX first, Vagrant supports ANSI color on the command line, but doesn't automatically turn it on for Windows. If you have the Windows 10 creators update, you can enable this by setting the 'VAGRANT_FORCE_COLOR' environment variable to any value or pass the --color parameter.. If you're using an older OS you can use [Cmder](http://cmder.net/.)
use `vagrant --color` or `$env:VAGRANT_FORCE_COLOR` to enable colors on windows.
