#
# Cookbook:: hpe_oneview_chef_ar
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.






include_recipe 'hpe_oneview_chef_ar::network_config'
include_recipe 'hpe_oneview_chef_ar::interconnect_config'