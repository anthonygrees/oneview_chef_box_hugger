#
# Cookbook Name:: oneview_chef_box_hugger
# Attribute:: default
#
# Copyright (c) 2017 Chef, All Rights Reserved.

# DELETE ALL !!! : FALSE-Will Delete || TRUE-Will NOT Delete
default['oneview']['do_not_delete']         = true

# Network Attributes
default['oneview']['ethernet_name']        = 'ChefEthernet_3001'
default['oneview']['network_set']          = 'ChefNetworkSet_3001'
default['oneview']['fibre_channel']        = 'ChefFibre Channel A'
default['oneview']['vlanId']               = '3001'

#Interconnect
# ICM (Interconnect Module) types
default['oneview']['lig_name']             = 'ChefLogicalInterconnectGroup1'
default['oneview']['lig_uls_name']         = 'ChefLogicalInterconnectGroup1 - UplinkSet1'
default['oneview']['icm_type']             = 'Virtual Connect SE 40Gb F8 Module for Synergy'
default['oneview']['enclosure_index']      = '1'
default['oneview']['side_a_bay']           = '3'
default['oneview']['side_b_bay']           = '6'
default['oneview']['port']                 = 'Q1'

# Scope
default['oneview']['scope_1']              = 'Scope1'
default['oneview']['scope_1']              = 'Scope2'

#Enclosure Group
default['oneview']['enclosure_group_name'] = 'ChefEnclosureGroup1'

#Server Profile
default['oneview']['server_profile_name']  = 'Docker_Worker_Profile'
default['oneview']['server_hardware_type'] = 'SY 480 Gen10 1'

# Individual Delete Clean-Up:: FALSE-Will Delete || TRUE-Will NOT Delete
default['oneview']['network_config']         = true
default['oneview']['interconnect_config']    = true
default['oneview']['enclosure_group_config'] = true
default['oneview']['server_profile_config']  = true
default['oneview']['scope_config']           = true