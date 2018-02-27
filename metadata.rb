name 'chef-apt-docker'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache-2.0'
description 'Sets up the Docker apt repository'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '2.0.5'

recipe 'chef-apt-docker::default', 'Sets up the Docker apt repository.'

%w(ubuntu debian).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/chef-apt-docker'
issues_url 'https://github.com/chef-cookbooks/chef-apt-docker/issues'
chef_version '>= 12.9' if respond_to?(:chef_version)
