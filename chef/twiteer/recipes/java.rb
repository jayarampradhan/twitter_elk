# Cookbook Name:: twiteer
# Recipe:: java
# Will Install open jdk as required by the application
# Copyright (C) 2016 Intuit
#
# All rights reserved - Do Not Redistribute
#

package 'java' do
  package_name "#{node[:java][:name]}"
  version "#{node[:java][:version]}"
  action :install
end