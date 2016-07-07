# Cookbook Name:: twiteer
# Recipe:: nginx
# This will install and configure the nginx rev proxy and configure as specified
#
# Copyright (C) 2016 Intuit
#
# All rights reserved - Do Not Redistribute
#

package 'nginx-install' do
  package_name "nginx"
  action :install
end

template "/etc/nginx/nginx.conf" do
  source "nginx.conf.erb"
end

#Create kibana admin user and Configure Nginx
package 'httpd-tools' do
  package_name 'httpd-tools'
  action :install
end
# add user "kibana" with password "kibana" to "/etc/nginx/htpassword" with the default md5 type.
htpasswd "/etc/nginx/htpasswd.users" do
  user "kibana"
  password "kibana"
end

template "/etc/nginx/conf.d/kibana.conf" do
  source "kibana.conf.erb"
end

service "nginx" do
  supports :status => true, :restart => true, :reload => true
  action [ :start ]
end
