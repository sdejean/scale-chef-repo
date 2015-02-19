#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

package 'httpd'
package 'httpd-tools'

service 'httpd' do
  action [:enable, :start]
end
