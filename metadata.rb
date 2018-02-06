name 'hpe_oneview_chef_ar'
maintainer 'Anthony Rees'
maintainer_email 'anthony@chef.io'
license 'All Rights Reserved'
description 'Installs/Configures hpe_oneview_chef_ar'
long_description 'Installs/Configures hpe_oneview_chef_ar'
version '0.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/<insert_org_here>/hpe_oneview_chef_ar/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/<insert_org_here>/hpe_oneview_chef_ar'
depends 'oneview'