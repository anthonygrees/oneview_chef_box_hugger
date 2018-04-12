#
# Cookbook Name:: oneview_chef_box_hugger
# Recipe:: enclosure_group_delete
#
# Copyright (c) 2018 Chef, All Rights Reserved.

my_client = {
  url: ENV['ONEVIEWSDK_URL'],
  user: ENV['ONEVIEWSDK_USER'],
  password: ENV['ONEVIEWSDK_PASSWORD'],
}

# Cleanup:
oneview_enclosure_group "#{node['oneview']['enclosure_group_name']}" do
  client my_client
  action :delete
end
