#
# Cookbook Name:: ntp
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'ntp'
package 'ntpdate'

template '/etc/ntp.conf' do
  action  :create_if_missing
  source  'ntp.conf.erb'
  mode    '0644'
  owner   'root'
  group   'root'
end

service 'ntpd' do
  action  [:enable, :start]
end
