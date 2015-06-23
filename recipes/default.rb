#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

#Variables
timezone_pacific      = node[:timezone][:pacific]
timezone_localtime    = node[:timezone][:localtime]


package 'ntp' do
  action :install
end

cookbook_file 'etc/ntp.conf' do
  source 'ntp.conf'
  mode '644'
end

file timezone_localtime do
  owner 'root'
  group 'root'
  mode 0644
  content ::File.open(timezone_pacific).read
  action :create
end

service 'ntpd' do
  action [:restart]
end
