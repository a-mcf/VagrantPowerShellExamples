#
# Cookbook Name:: chefdemo
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

cookbook_file 'C:\Windows\Temp\helloworld.txt' do
  action :create
end
