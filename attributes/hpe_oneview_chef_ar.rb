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

#Interconnect

# ICM (Interconnect Module) types
default['oneview']['lig_name']          = 'ChefLogicalInterconnectGroup1'
default['oneview']['lig_uls_name']      = 'ChefLogicalInterconnectGroup1 - UplinkSet1'
default['oneview']['icm_type']          = 'Virtual Connect SE 40Gb F8 Module for Synergy'
default['oneview']['enclosure_index']   = '1'
default['oneview']['side_a_bay']        = '3'
default['oneview']['side_b_bay']        = '6'
default['oneview']['port']              = 'Q1'