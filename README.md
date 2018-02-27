# chef-apt-docker Cookbook

[![Build Status](https://travis-ci.org/chef-cookbooks/chef-apt-docker.svg?branch=master)](https://travis-ci.org/chef-cookbooks/chef-apt-docker) [![Cookbook Version](https://img.shields.io/cookbook/v/chef-apt-docker.svg)](https://supermarket.chef.io/cookbooks/chef-apt-docker)

Configures the official Docker apt repository

## Requirements

### Platforms

- Debian
- Ubuntu

### Chef

- Chef 12.9+

### Cookbooks

- none

## Attributes

- `node['chef-apt-docker']['components']` - repository components to configure. Default to ['main']. Other options are experimental and testing. Component must be an array of strings even if only a single component.

## Usage

Simply add `recipe[chef-apt-docker]` to a run list. Change the component if you want testing / experimental releases

Note: Debian 7 requires the wheezy-backports repository be setup to fully satisfy requirements of the docker packages. This cookbook does not handle that, but you will need to setup that repository if running Debian 7.

Note: As of version 2.0 of this cookbook installs *docker-ce* instead of *docker-engine* as Docker renamed the free Docker products to Docker Community Edition (CE) in 2017. 

## License & Authors

**Author:** Cookbook Engineering Team ([cookbooks@chef.io](mailto:cookbooks@chef.io))

## Maintainers

This cookbook is maintained by Chef's Community Cookbook Engineering team. Our goal is to improve cookbook quality and to aid the community in contributing to cookbooks. To learn more about our team, process, and design goals see our [team documentation](https://github.com/chef-cookbooks/community_cookbook_documentation/blob/master/COOKBOOK_TEAM.MD). To learn more about contributing to cookbooks like this see our [contributing documentation](https://github.com/chef-cookbooks/community_cookbook_documentation/blob/master/CONTRIBUTING.MD), or if you have general questions about this cookbook come chat with us in #cookbok-engineering on the [Chef Community Slack](http://community-slack.chef.io/)

## License

**Copyright:** 2016-2017, Chef Software, Inc.

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
