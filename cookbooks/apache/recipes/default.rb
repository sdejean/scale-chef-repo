#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package_name = 'httpd'

package package_name
package "#{package_name}-tools"

service 'httpd' do
  action [:enable, :start]
end
