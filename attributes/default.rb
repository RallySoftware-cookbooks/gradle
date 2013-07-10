default['gradle']['version'] = '1.6'
default['gradle']['archive_name']  = "gradle-#{node['gradle']['version']}-bin.zip"
default['gradle']['source_url']  = "http://services.gradle.org/distributions/#{node['gradle']['archive_name']}"
default['gradle']['path']  = "/usr/local/gradle-#{node['gradle']['version']}"
default['gradle']['owner']  = 'root'
default['gradle']['group']  = 'root'
default['grails']['mode'] = 755
