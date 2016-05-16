include_recipe 'apt'
include_recipe 'chef-apt-docker'

# docker needs init-system-helpers, which is in backports on wheezy
apt_repository 'debian_wheezy_backports' do
  uri 'http://http.debian.net/debian'
  distribution 'wheezy-backports'
  components %w(main)
  only_if { node['lsb']['codename'] == 'wheezy' }
end

package 'docker-engine'
