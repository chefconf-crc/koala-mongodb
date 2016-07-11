#
# Cookbook Name:: .
# Recipe:: install_mongo
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#

yum_repository 'mongodb-org-3.2' do
  description 'MongoDB Repository'
  baseurl 'https://repo.mongodb.org/yum/redhat/$releaserver/mongodb-org/3.2/x86_64/'
  gpgcheck true
  gpgkey 'https://www.mongodb.org/static/pgp/server-3.2.asc'
  enabled true
  action :create
end

package 'mongodb-org' do
  action :install
end

service 'mongod' do
  action [ :enable, :start ]
end

directory '/var/lib/mongo'  do
  owner 'mongod'
  group 'mongod'
  mode '0755'
  action :create
end


