#
# Cookbook Name:: koala-mongodb
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#

#include_recipe 'koala-mongodb::install_mongo'

mongo 'install mongodb' do
  action :install
end
