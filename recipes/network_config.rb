#
# Cookbook Name:: hpe_oneview_chef_ar
# Recipe:: network_config
#
# Copyright (c) 2017 Chef, All Rights Reserved.

my_client = {
    url: ENV['ONEVIEWSDK_URL'],
    user: ENV['ONEVIEWSDK_USER'],
    password: ENV['ONEVIEWSDK_PASSWORD']
  }
  
  # Ethernet network that will be used for the examples below
  oneview_ethernet_network "#{node['oneview']['ethernet_name']}" do
    client my_client
    data(
      vlanId: 3001,
      purpose:  'General',
      smartLink:  false,
      privateNetwork:  false,
      bandwidth: {
        maximumBandwidth: 15000,
        typicalBandwidth: 2000
      }
    )
  end
  
  # Network set that will be used for the examples below
  oneview_network_set "#{node['oneview']['network_set']}" do
    client my_client
    ethernet_network_list ["#{node['oneview']['ethernet_name']}"]
  end
  
  # FC network that will be used for the examples below
  oneview_fc_network 'ChefFibre Channel A' do
    client my_client
    data(
      fabricType: 'FabricAttach',
      autoLoginRedistribution: true
    )
  end
  
  # Example: Update the connection template for an ethernet network
  oneview_connection_template 'Update connection template for ChefEthernet_3001' do
    client my_client
    associated_ethernet_network 'ChefEthernet_3001'
    data(
      bandwidth: {
        maximumBandwidth: 13500,
        typicalBandwidth: 2200
      }
    )
  end
  
  # Example: Reset the connection template for an ethernet network
  oneview_connection_template 'Reset connection template for ChefEthernet_3001' do
    client my_client
    associated_ethernet_network 'ChefEthernet_3001'
    action :reset
  end
  
  # Example: Update the connection template for a fiber channel network
  oneview_connection_template 'Update connection template for ChefFibre Channel A' do
    client my_client
    associated_fc_network 'ChefFibre Channel A'
    data(
      bandwidth: {
        maximumBandwidth: 1000 * 8, # 8Gb/s
        typicalBandwidth: 1000 * 8
      }
    )
  end
  
  # Example: Reset the connection template for a fiber channel network
  oneview_connection_template 'Reset connection ChefFibre Channel A' do
    client my_client
    associated_fc_network 'ChefFibre Channel A'
    action :reset
  end