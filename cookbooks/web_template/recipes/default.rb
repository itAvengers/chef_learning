#
# Cookbook:: web_atributes
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
# package_name = 'httpd'
# service_name = 'httpd'
# document_root = '/var/www/html'

package node['package_name']

service node['service_name'] do
  action [:start, :enable]
end

template "#{node['document_name']}/index.html" do
  owner 'apache'
  group 'apache'
  source 'index.html.erb'
end
