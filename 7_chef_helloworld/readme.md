# Chef 'Hello World' On Windows

A simple example of using a Chef Cookbook to do something to a Windows Machine.

After installing the [ChefDK](https://downloads.chef.io/chefdk) on my host machine, I switched
to the  `7_chef_helloworld` directory, and created a cookbooks directory. From within `.\7_chef_helloworld\cookbooks`
I ran the following command to generate a new cookbook. 
```
chef generate cookbook chefdemo
```

I made the following changes to recipies\chefdemo\default.rb

```
cookbook_file 'C:\Windows\Temp\helloworld.txt' do
  action :create
end
```

Finally, a `helloworld.txt` file was created under files\.

All that was left was to run vagrant up and prove that the file still existed.

