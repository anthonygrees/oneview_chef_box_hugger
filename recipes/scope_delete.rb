
# Cookbook Name:: hpe_oneview_chef_ar
# Recipe:: interconnect_config
#
# Copyright (c) 2017 Chef, All Rights Reserved.

# NOTE: Support only in API300 onwards.

my_client = {
    url: ENV['ONEVIEWSDK_URL'],
    user: ENV['ONEVIEWSDK_USER'],
    password: ENV['ONEVIEWSDK_PASSWORD']
  }

# Example: Delete the Scope created in this example
oneview_scope "#{node['oneview']['scope_1']}" do
    client my_client
    api_version 300
    action :delete
end