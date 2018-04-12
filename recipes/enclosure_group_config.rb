#
# Cookbook Name:: oneview_chef_box_hugger
# Recipe:: enclosure_group_config
#
# Copyright (c) 2017 Chef, All Rights Reserved.

my_client = {
  url: ENV['ONEVIEWSDK_URL'],
  user: ENV['ONEVIEWSDK_USER'],
  password: ENV['ONEVIEWSDK_PASSWORD'],
}

unless node['oneview']['enclosure_group_config']
  include_recipe 'oneview_chef_box_hugger::enclosure_group_delete'
  return
end

# Ethernet network that will be used for the examples below
oneview_enclosure_group 'EnclosureGroup_1' do
  client my_client
  api_variant 'Synergy'
  data(
    name: "#{node['oneview']['enclosure_group_name']}",
    ipAddressingMode: 'DHCP',
    stackingMode: 'Enclosure',
    interconnectBayMappingCount: 6
  )
  logical_interconnect_groups [{ name: "#{node['oneview']['lig_name']}", enclosureIndex: 3 },
                               { name: "#{node['oneview']['lig_name']}", enclosureIndex: 6 }]
  action :create
end