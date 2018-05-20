#
# Cookbook Name:: oneview_chef_box_hugger
# Recipe:: network_config
#
# Copyright (c) 2017 Chef, All Rights Reserved.

my_client = {
  url: ENV['ONEVIEWSDK_URL'],
  user: ENV['ONEVIEWSDK_USER'],
  password: ENV['ONEVIEWSDK_PASSWORD']
}
  
unless node['oneview']['server_profile_config']
  include_recipe 'oneview_chef_box_hugger::server_profile_delete'
  return
end

# Server Profile
oneview_server_profile "#{node['oneview']['server_profile_name']}" do
  client my_client
  data(name: "#{node['oneview']['server_profile_name']}")
  enclosure_group "#{node['oneview']['enclosure_group_name']}" 
  server_hardware_type "#{node['oneview']['server_hardware_type']}"
  ethernet_network_connections( "#{node['oneview']['ethernet_name']}": { 
      name: "#{node['oneview']['ethernet_name']}" 
    }
  )
    
    action :create
  end