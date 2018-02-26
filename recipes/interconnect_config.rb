#
# Cookbook Name:: oneview_chef_box_hugger
# Recipe:: interconnect_config
#
# Copyright (c) 2017 Chef, All Rights Reserved.

my_client = {
    url: ENV['ONEVIEWSDK_URL'],
    user: ENV['ONEVIEWSDK_USER'],
    password: ENV['ONEVIEWSDK_PASSWORD']
  }

unless node['oneview']['interconnect_config']
    include_recipe 'oneview_chef_box_hugger::interconnect_delete'
    return
end

# DATA FOR THE UPLINK SET
connections_01 = [
  { bay: "#{node['oneview']['side_a_bay']}", port: "#{node['oneview']['port']}", type: "#{node['oneview']['icm_type']}", enclosure_index: "#{node['oneview']['enclosure_index']}" },
  { bay: "#{node['oneview']['side_b_bay']}", port: "#{node['oneview']['port']}", type: "#{node['oneview']['icm_type']}", enclosure_index: "#{node['oneview']['enclosure_index']}" }
]
lig_01_uplink_01_data = {
  name: "#{node['oneview']['lig_uls_name']}",
  networkType: 'Ethernet',
  ethernetNetworkType: 'Tagged'
}

networks_01 = ["#{node['oneview']['ethernet_name']}"]

# Logical Interconnect Group 1
oneview_logical_interconnect_group "#{node['oneview']['lig_name']}" do
  client my_client
  api_variant 'Synergy'
  data(
     redundancyType: 'Redundant', # Not 'HighlyAvailable'
     interconnectBaySet: 3,
     enclosureIndexes: [1, 1],
     enclosureType: 'SY12000'
  )
  interconnects [
    { bay: "#{node['oneview']['side_a_bay']}", type: "#{node['oneview']['icm_type']}", enclosure_index: "#{node['oneview']['enclosure_index']}" },
    { bay: "#{node['oneview']['side_b_bay']}", type: "#{node['oneview']['icm_type']}", enclosure_index: "#{node['oneview']['enclosure_index']}" }
  ]
  uplink_sets [
    { data: lig_01_uplink_01_data, connections: connections_01, networks: networks_01 }
  ]
end