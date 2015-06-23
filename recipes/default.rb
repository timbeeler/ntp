#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

#Variables
ntp_timezone_pacific      = node[:ntp][:timezone][:pacific]
host_localtime            = node[:host][:localtime]


package 'ntp' do
  action :install
end

cookbook_file 'etc/ntp.conf' do
  source 'ntp.conf'
  mode '644'
end

file host_localtime do
  owner 'root'
  group 'root'
  mode 0644
  content ::File.open(ntp_timezone_pacific).read
  action :create
end

service 'ntpd' do
  action [:restart]
end
