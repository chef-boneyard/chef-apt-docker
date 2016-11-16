#
# Cookbook:: chef-apt-docker
# Attributes:: default
#
# Copyright:: 2016, Chef Software, Inc.
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

default['chef-apt-docker']['components'] = %w(main)
default['chef-apt-docker']['uri'] = 'https://apt.dockerproject.org/repo'
default['chef-apt-docker']['keyserver'] = 'p80.pool.sks-keyservers.net'
default['chef-apt-docker']['key'] = '58118E89F3A912897C070ADBF76221572C52609D'
