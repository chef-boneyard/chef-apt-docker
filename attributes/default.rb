#
# Cookbook:: chef-apt-docker
# Attributes:: default
#
# Copyright:: 2016-2017, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['chef-apt-docker']['docker-stable']['components'] = %w(stable)
default['chef-apt-docker']['docker-stable']['uri'] = "https://download.docker.com/linux/#{node['platform']}"
default['chef-apt-docker']['docker-stable']['distribution'] = node['lsb']['codename']
default['chef-apt-docker']['docker-stable']['arch'] = 'amd64'
default['chef-apt-docker']['docker-stable']['keyserver'] = 'keyserver.ubuntu.com'
default['chef-apt-docker']['docker-stable']['key'] = '9DC858229FC7DD38854AE2D88D81803C0EBFCD88'
default['chef-apt-docker']['docker-stable']['enabled'] = true

default['chef-apt-docker']['docker-edge']['components'] = %w(edge)
default['chef-apt-docker']['docker-edge']['uri'] = "https://download.docker.com/linux/#{node['platform']}"
default['chef-apt-docker']['docker-edge']['distribution'] = node['lsb']['codename']
default['chef-apt-docker']['docker-edge']['arch'] = 'amd64'
default['chef-apt-docker']['docker-edge']['keyserver'] = 'keyserver.ubuntu.com'
default['chef-apt-docker']['docker-edge']['key'] = '9DC858229FC7DD38854AE2D88D81803C0EBFCD88'
default['chef-apt-docker']['docker-edge']['enabled'] = false

default['chef-apt-docker']['docker-test']['components'] = %w(test)
default['chef-apt-docker']['docker-test']['uri'] = "https://download.docker.com/linux/#{node['platform']}"
default['chef-apt-docker']['docker-test']['distribution'] = node['lsb']['codename']
default['chef-apt-docker']['docker-test']['arch'] = 'amd64'
default['chef-apt-docker']['docker-test']['keyserver'] = 'keyserver.ubuntu.com'
default['chef-apt-docker']['docker-test']['key'] = '9DC858229FC7DD38854AE2D88D81803C0EBFCD88'
default['chef-apt-docker']['docker-test']['enabled'] = false
