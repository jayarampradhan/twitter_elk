# Cookbook Name:: twiteer
# Recipe:: elasticsearch
# Will Install HAProxy
# Copyright (C) 2016 Intuit
#
# All rights reserved - Do Not Redistribute
#


#Create or update the elasticsearch yum repo
yum_repository 'elasticsearch' do
  description 'elasticsearch Package for Linux'
  baseurl 'https://packages.elastic.co/elasticsearch/2.x/centos'
  gpgkey 'https://packages.elastic.co/GPG-KEY-elasticsearch'
  enabled true
  gpgcheck true
  action :create
end
package 'elasticsearch' do
  package_name 'elasticsearch'
  action :install
end


replace_or_add "elasticsearch_localhost_binding" do
  path "/etc/elasticsearch/elasticsearch.yml"
  pattern "network.host:*"
  line "network.host: localhost"
end

service "elasticsearch" do
  supports :status => true, :restart => true, :reload => true
  action [ :start ]
end


#Create or update the Kibana yum repo
yum_repository 'kibana' do
  description 'kibana Package for Linux'
  baseurl 'https://packages.elastic.co/kibana/4.4/centos'
  gpgkey 'https://packages.elastic.co/GPG-KEY-elasticsearch'
  enabled true
  gpgcheck true
  action :create
end
package 'kibana' do
  package_name 'kibana'
  action :install
end

replace_or_add "Kibna_localhost_binding" do
  path "/opt/kibana/config/kibana.yml"
  pattern "server.host:*"
  line "server.host: \"localhost\""
end

service "kibana" do
  supports :status => true, :restart => true, :reload => true
  action [ :start ]
end


#Create or update the log stash yum repo
yum_repository 'logstash' do
  description 'Logstash Package for Linux'
  baseurl 'http://packages.elasticsearch.org/logstash/2.2/centos'
  gpgkey 'http://packages.elasticsearch.org/GPG-KEY-elasticsearch'
  enabled true
  gpgcheck true
  action :create
end

#Install the log stash
package 'logstash' do
  package_name 'logstash'
  action :install
end

template "/etc/logstash/conf.d/logstash.conf" do
  source "logstash.conf.erb"
  owner "logstash"
  group "logstash"
  mode 0655
end


service "logstash" do
  supports :status => true, :restart => true, :reload => true
  action [ :start ]
end
