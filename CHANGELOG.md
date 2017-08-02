# chef-apt-docker Cookbook CHANGELOG

This file is used to list changes made in each version of the chef-apt-docker cookbook.

## 2.0.0 (2017-08-02)

- updating to the latest docker repo structure as Docker has entirely changed their repo setup

## 1.1.2 (2017-07-25)

- Pull Docker GPG key from pgp.mit.edu

## 1.1.1 (2017-03-01)

- removing dep on compat_resource

## 1.1.0 (2017-02-15)

- Make sure debian knows it's codename
- Add contributing doc
- Use compat_resource instead of apt cookbook
- Make sure we can use https repos
- Add attributes for repository uri, keyserver and key
