# Provisioning basics

## Scenario 1, Fresh build
With no box provisioned, provision a new machine.
```
vagrant destroy
vagrant up
```
- All provisioners are expected to run.
- Verify by listing text files inside the VM.

## Scenario 2, Reboot
Reboot the machine. Use Vagrant to perform the restart so ports are 
mapped and WinRM connects on restart.

```
vagrant reload
```

- Only `provision_always.ps1` should run.
- Verify by listing text files inside the VM.

## Scenario 3, Manual Provisioning Run
Manually run the Vagrant provisioning process.

If there were multiple provsioner types configured, you could call them with `vagrant provision --provsion-with [provsioner]`,
but because we are only using the script provisioner, this doesn't work here.
