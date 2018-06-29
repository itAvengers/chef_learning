#
# Cookbook:: web_test
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

package 'httpd' do
  action :install
end

service 'httpd' do
  action :start
end

service 'httpd' do
  action :enable
end

file '/var/www/html/index.html' do
  owner 'apache'
  group 'apache'
  mode '0644'
  content 'successfully Apache Server has been set up'
  action :create
end
