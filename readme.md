What follows is a set of notes and examples for use in demonstrating some use cases with Vagrant and Windows. These were intially demonstrated to the Cincinati PowerShell Users group on 8/17/2017.

## Vagrant basics

- run through what it is.
- talk about why I'm currently using virtualbox.
- talk about where images come from.
- demo the shared folder
- talk about permission gotchas with the vagrant shared folder.

## gotchas
- shared folder issues: VirtualBox uses an internal SMB server for the shared folder. You can't see what permissions are allowed, so some gymnastics may be required.
- be sure to include the .vagrant files in your .gitignore.

## tips

use `vagrant --color` or `$env:VAGRANT_FORCE_COLOR` to enable colors on windows.
