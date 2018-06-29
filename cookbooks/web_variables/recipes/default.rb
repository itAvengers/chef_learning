#
# Cookbook:: web_variables
# Recipe:: setup the apache server using the variables in the cookbook
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#

package_name = 'httpd'
service_name = 'httpd'
document_root = '/var/www/html'

package package_name

service service_name do
  action [:start, :enable]
end

file "#{document_root}/index.html" do
  owner 'apache'
  group 'apache'
  mode '0644'
  content 'Apache Server is testing vriables . . .'
end
