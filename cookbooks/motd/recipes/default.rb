#
# Cookbook name:: motd
# Recipe:: default
# Copyright (c) 2015 Nonsense
template '/etc/motd' do
  action  :create
  source  'motd.erb'
  mode    '0644'
  owner   'root'
  group   'root'
end
