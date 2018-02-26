
# Cookbook Name:: oneview_chef_box_hugger
# Recipe:: scope_config
#
# Copyright (c) 2017 Chef, All Rights Reserved.

#  NOTE: Support only in API300 onwards.

my_client = {
    url: ENV['ONEVIEWSDK_URL'],
    user: ENV['ONEVIEWSDK_USER'],
    password: ENV['ONEVIEWSDK_PASSWORD']
  }

unless node['oneview']['scope_config']
    include_recipe 'oneview_chef_box_hugger::scope_delete'
    return
end


# Example: Create a Scope with a simple description
oneview_scope "#{node['oneview']['scope_1']}" do
    client my_client
    # api_version 300
    data(
      description: 'Sample Scope description'
    )
end

# Adds 'LogicalInterconnectGroup1' to 'Scope1' and 'Scope2'
oneview_logical_interconnect_group "#{node['oneview']['lig_name']}" do
    client my_client
    api_variant 'Synergy'
    scopes ["#{node['oneview']['scope_1']}", "#{node['oneview']['scope_2']}"]
    action :add_to_scopes
end