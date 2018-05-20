#
# Cookbook:: oneview_chef_box_hugger
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Delete order to clean-up - execute on FALSE
unless node['oneview']['do_not_delete']
    include_recipe 'oneview_chef_box_hugger::network_delete'
    include_recipe 'oneview_chef_box_hugger::server_profile_delete'
    include_recipe 'oneview_chef_box_hugger::enclosure_group_delete'
    #include_recipe 'oneview_chef_box_hugger::scope_delete'
    include_recipe 'oneview_chef_box_hugger::interconnect_delete'
    return
end

# Create order - execute on TRUE
if node['oneview']['do_not_delete']
    include_recipe 'oneview_chef_box_hugger::network_config'
    include_recipe 'oneview_chef_box_hugger::interconnect_config'
    include_recipe 'oneview_chef_box_hugger::enclosure_group_config'
    #include_recipe 'oneview_chef_box_hugger::scope_config'
    include_recipe 'oneview_chef_box_hugger::server_profile_config'
end