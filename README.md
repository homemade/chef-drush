# Description


Installs Drush via the PEAR package management system. Also installs Console_Table which is a requirement of Drush.

# Requirements


## Cookbooks

* php

# Attributes

* `node['drush']['version']` = drush version to install, current default is `6.x`.

# Usage

Include the `drush` recipe in order to install Drush
