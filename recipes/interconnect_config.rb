#
# Cookbook Name:: hpe_oneview_chef_ar
# Recipe:: interconnect_config
#
# Copyright (c) 2017 Chef, All Rights Reserved.

my_client = {
    url: ENV['ONEVIEWSDK_URL'],
    user: ENV['ONEVIEWSDK_USER'],
    password: ENV['ONEVIEWSDK_PASSWORD']
  }

# ICM (Interconnect Module) types
icm_type_1 = 'Virtual Connect SE 40Gb F8 Module for Synergy'
icm_type_2 = 'Virtual Connect SE 40Gb F8 Module for Synergy'

# DATA FOR THE UPLINK SET
connections_01 = [
  { bay: 3, port: 'Q1', type: icm_type_1, enclosure_index: 1 },
  { bay: 6, port: 'Q1', type: icm_type_1, enclosure_index: 1 }
]
lig_01_uplink_01_data = {
  name: 'ChefLogicalInterconnectGroup1 - UplinkSet1',
  networkType: 'Ethernet',
  ethernetNetworkType: 'Tagged'
}

networks_01 = ["#{node['oneview']['ethernet_name']}"]

# Logical Interconnect Group 1
oneview_logical_interconnect_group 'ChefLogicalInterconnectGroup1' do
  client my_client
  api_variant 'Synergy'
  data(
     redundancyType: 'Redundant', # Not 'HighlyAvailable'
     interconnectBaySet: 3,
     enclosureIndexes: [1, 1],
     enclosureType: 'SY12000'
  )
  interconnects [
    { bay: 3, type: icm_type_1, enclosure_index: 1 },
    { bay: 6, type: icm_type_1, enclosure_index: 1 }
  ]
  uplink_sets [
    { data: lig_01_uplink_01_data, connections: connections_01, networks: networks_01 }
  ]
end