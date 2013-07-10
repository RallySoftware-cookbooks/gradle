[![Build Status](https://travis-ci.org/RallySoftware-cookbooks/gradle.png?branch=master)](https://travis-ci.org/RallySoftware-cookbooks/gradle)

Description
===========
Installs the gradle library - 1.6 by default.

Requirements
============

Platform
--------
Tested on CentOS 6.4 and Ubuntu 12.04.  May support other operating systems that support the use of ark.

Other
-----

Requires the RallySoftware-cookbooks/ark cookbook

Attributes
==========
See `attributes/default.rb` for default values

* `node['gradle']['version']` - version of gradle to install (1.6)
* `node['gradle']['archive_name']`  - archive name to download (includes version)
* `node['gradle']['source_url']`  - where to find the gradle package
* `node['gradle']['path']`  - where to install gradle
* `node['gradle']['owner']`  - who should own the directory
* `node['gradle']['group']`  - which group the directory should belong to
* `node['gradle']['mode']`  - the permissions to set the installation directory to

Recipes
=======

default
-------

Installs the gradle library.

License
=======
Copyright (c) Rally Software Development Corp. 2013

Distributed under the MIT License.
