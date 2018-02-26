#
# Cookbook Name:: oneview_chef_box_hugger
# Recipe:: network_delete
#
# Copyright (c) 2018 Chef, All Rights Reserved.

my_client = {
    url: ENV['ONEVIEWSDK_URL'],
    user: ENV['ONEVIEWSDK_USER'],
    password: ENV['ONEVIEWSDK_PASSWORD']
  }
  
# Cleanup:
oneview_ethernet_network "#{node['oneview']['ethernet_name']}" do
  client my_client
  action :delete
end

oneview_network_set "#{node['oneview']['network_set']}" do
  client my_client
  action :delete
end

oneview_fc_network "#{node['oneview']['fibre_channel']}" do
  client my_client
  action :delete
end