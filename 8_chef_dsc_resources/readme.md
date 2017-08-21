# DSC Resource Resource

This adapts the DSC configuration in scenario #3 to a Chef configuration.

The Chef configuration calls the _DSC Resource_ resource so that Chef uses DSC to do the actual lifting.

This is a nice scenario for many Windows shops as Chef has a far more complete ecossytem than DSC does.

# Use
run: `Vagrant Up`

## How It Was Built:
```
mkdir cookbooks
cd cookbooks
chef generate cookbook chef_dsc_simple
```

Add the following to `cookbooks\chef_dsc_simple\recipies\default.rb`:
```
dsc_resource 'IIS' do
  resource :WindowsFeature
  property :Name, 'Web-Server'
end

dsc_resource 'DefaultDocument' do
  resource :File
  property :DestinationPath, 'c:\inetpub\wwwroot\index.html'
  property :Contents, 'Hello World'
  property :Ensure, 'present'
end
```

