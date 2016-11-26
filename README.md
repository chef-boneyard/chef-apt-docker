# chef-apt-docker Cookbook

[![Build Status](https://travis-ci.org/chef-cookbooks/chef-apt-docker.svg?branch=master)](https://travis-ci.org/chef-cookbooks/chef-apt-docker) [![Cookbook Version](https://img.shields.io/cookbook/v/chef-apt-docker.svg)](https://supermarket.chef.io/cookbooks/chef-apt-docker)

Configures the official Docker apt repository

## Requirements

### Platforms

- Debian
- Ubuntu

### Chef

- Chef 12.1+

### Cookbooks

- compat_resource

## Attributes

- `node['chef-apt-docker']['components']` - repository components to configure. Default to ['main']. Other options are experimental and testing. Component must be an array of strings even if only a single component.

## Usage

Simply add `recipe[chef-apt-docker]` to a run list. Change the component if you want testing / experimental releases

Note: Debian 7 requires the wheezy-backports repository be setup to fully satisfy requirements of the docker packages. This cookbook does not handle that, but you will need to setup that repository if running Debian 7.

## License & Authors

**Author:** Cookbook Engineering Team ([cookbooks@chef.io](mailto:cookbooks@chef.io))

**Copyright:** 2016, Chef Software, Inc.

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
