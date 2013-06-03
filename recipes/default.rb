# Author:: Benedict Steele <operations@homemade.io>
# Cookbook Name::  drush
# Recipe:: default
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

dr = php_pear_channel "pear.drush.org" do
  action :discover
end

php_pear "Console_Table" do
  action :install
end 


php_pear "drush" do
  channel dr.channel_name
  if node['drush']['version'] != "latest"
    version "#{node[:drush][:version]}"
  end 
  action :upgrade if node[:drush][:version] == "latest"
end
