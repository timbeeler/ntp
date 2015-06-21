#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'ntp' do
  action :install
end

cookbook_file 'etc/ntp.conf' do
  source 'ntp.conf'
  mode '644'
end

service 'ntpd' do
  action [:restart]
end