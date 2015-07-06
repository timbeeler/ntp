#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

#Variables
timezone_desired      = node[:timezone][:nyc]
timezone_localtime    = node[:timezone][:localtime]

# Install ntp
package 'ntp' do
  action :install
end

# Deploy ntp.conf from template

template 'etc/ntp.conf' do
  source 'ntp.conf.erb'
  mode '644'
end

# Set timezone
file timezone_localtime do
  owner 'root'
  group 'root'
  mode 0644
  content ::File.open(timezone_desired).read
  action :create
end

service 'ntpd' do
  action [:restart]
end
