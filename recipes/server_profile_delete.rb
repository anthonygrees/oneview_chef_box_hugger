#
# Cookbook Name:: oneview_chef_box_hugger
# Recipe:: network_delete
#
# Copyright (c) 2018 Chef, All Rights Reserved.

my_client = {
  url: ENV['ONEVIEWSDK_URL'],
  user: ENV['ONEVIEWSDK_USER'],
  password: ENV['ONEVIEWSDK_PASSWORD']
}

# Cleanup:
oneview_server_profile "#{node['oneview']['server_profile_name']}" do
  client my_client
  action :delete
end
