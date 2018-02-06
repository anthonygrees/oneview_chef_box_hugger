# HPE OneView Chef Cookbook

This cookbook provides recipes for the setup and conf of HPE OneView.

## Environment Variables
```
export ONEVIEWSDK_URL="https://oneviewIPaddress"
export ONEVIEWSDK_USER="OneViewUserName"
export ONEVIEWSDK_PASSWORD="Your_passoword"
```
And if you want to turn off SSL (because of self-signed certs)
```
export ONEVIEWSDK_SSL_ENABLED=false
```

## Attributes

**Attributes that must be passed to Chef OneView:**

    ['oneview']['ethernet_name']       = 'Ethernet Name'
    ['oneview']['network_set']         = 'Network Name'
    ['oneview']['fibre_channel']       = 'Fibre Channel Name'
    ['oneview']['vlanId']              = 'vLan Number' i.e. 3001
    ['oneview']['network_config']      = true or false
    
    ['oneview']['lig_name']            = 'Logical Interconnect Group Name'
    ['oneview']['lig_uls_name']        = 'Logical Interconnect Group UplinkSet1 Name'
    ['oneview']['icm_type']            = 'Interconnect Type'
    ['oneview']['enclosure_index']     = 'Enclosure Index Nbr'
    ['oneview']['side_a_bay']          = 'Nbr'  Note: Side A is 1,2 or 3
    ['oneview']['side_b_bay']          = 'Nbr'  Note: Side B is 4,5 or 6
    ['oneview']['port']                = 'Port' i.e. 'Q1' or 'Q1:1' or 'Q2'
    ['oneview']['interconnect_config'] = true or false

## Recipes

### network_config
This recipe creates the following based on the input attributes above:
- Create Network - Ethernet
- Create Network - Fibre Channel
- Create Network Set

### network_delete
This recipe removes the created 'network' components. It is also called if you have set the attribute
```
['oneview']['network_config'] = false
```

### interconnect_config
This recipe creates the following based on the input attributes above:
- Logical Interconnect Group
- Uplink Set

### interconnect_delete
This recipe removes the created 'logical interconnect group' components. It is also called if you have set the attribute
```
['oneview']['interconnect_config'] = false
```

# Testing

This cookbook uses the testing style documented here: https://github.com/chef-cookbooks/community_cookbook_documentation/blob/master/TESTING.MD

## License and Author

* Author:: Anthony Rees <anthony@chef.io>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
