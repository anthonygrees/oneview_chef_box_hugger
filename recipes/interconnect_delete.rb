#
# Cookbook Name:: hpe_oneview_chef_ar
# Recipe:: interconnect_delete
#
# Copyright (c) 2018 Chef, All Rights Reserved.

my_client = {
    url: ENV['ONEVIEWSDK_URL'],
    user: ENV['ONEVIEWSDK_USER'],
    password: ENV['ONEVIEWSDK_PASSWORD']
  }
  
# Cleanup:
# CLEANING UP THE LOGICAL INTERCONNECT GROUPS #
oneview_logical_interconnect_group "#{node['oneview']['lig_name']}" do
    client my_client
    api_variant 'Synergy'
    action :delete
  end