#
# Cookbook:: chef-apt-docker
# Recipe:: default
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

package %w(dirmngr apt-transport-https) do
  only_if { node['platform'] == 'debian' && node['platform_version'].to_i >= 9 }
end

%w(
  docker-stable
  docker-edge
  docker-test
).each do |repo|
  apt_repository repo do
    node['chef-apt-docker'][repo].each do |config, value|
      send(config.to_sym, value) unless value.nil? || config == 'enabled'
    end
    action node['chef-apt-docker'][repo]['enabled'] ? :add : :remove
  end
end
