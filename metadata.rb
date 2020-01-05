name 'chef-apt-docker'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache-2.0'
description 'Sets up the Docker apt repository'
version '2.0.6'

%w(ubuntu debian).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/chef-apt-docker'
issues_url 'https://github.com/chef-cookbooks/chef-apt-docker/issues'
chef_version '>= 12.15'
