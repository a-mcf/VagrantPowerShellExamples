#
# Cookbook Name:: chef_dsc_simple
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

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