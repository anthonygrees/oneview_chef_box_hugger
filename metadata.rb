name 'oneview_chef_box_hugger'
maintainer 'Anthony Rees'
maintainer_email 'anthony@chef.io'
license 'All Rights Reserved'
description 'Installs/Configures oneview_chef_box_hugger'
long_description 'Installs/Configures oneview_chef_box_hugger'
version '0.2.1'
chef_version '>= 12.1' if respond_to?(:chef_version)

# The `issues_url` points to the location where issues for this cookbook are
# tracked.  A `View Issues` link will be displayed on this cookbook's page when
# uploaded to a Supermarket.
#
# issues_url 'https://github.com/anthonygrees/oneview_chef_box_hugger/issues'

# The `source_url` points to the development repository for this cookbook.  A
# `View Source` link will be displayed on this cookbook's page when uploaded to
# a Supermarket.
#
# source_url 'https://github.com/anthonygrees/oneview_chef_box_hugger'
depends 'oneview'
