# This is attribute file
#
case node['platform']
when 'centos'
  default['package_name'] = 'httpd'
  default['service_name'] = 'httpd'
  default['document_name'] = '/var/www/html'
when 'ubuntu'
  default['package_name'] = 'apache2'
  default['service_name'] = 'apache2'
  default['document_name'] = '/var/www/html'
end
