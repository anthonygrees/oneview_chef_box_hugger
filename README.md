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

    ['oneview']['ethernet_name'] = 'Ethernet Name'
    ['oneview']['network_config'] = true

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
