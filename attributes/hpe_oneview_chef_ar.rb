#
# Cookbook Name:: hpe_oneview_chef_ar
# Attribute:: default
#
# Copyright (c) 2017 Chef, All Rights Reserved.

# Network Attributes

default['oneview']['ethernet_name']    = 'ChefEthernet_3001'
default['oneview']['network_set']      = 'ChefNetworkSet_3001'
default['oneview']['fibre_channel']    = 'ChefFibre Channel A'
default['oneview']['vlanId']           = '3001'

# Delete Network:: FALSE-Will Delete || TRUE-Will NOT Delete
default['oneview']['network_config']   = true