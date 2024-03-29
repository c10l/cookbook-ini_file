#
# Cookbook Name:: test
# Recipe:: default
#
# Copyright (C) 2013 Cassiano Leal
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

template '/tmp/settings.ini' do
  owner  "www_data"
  group  "www_data"
  mode   "0644"
  source "settings.ini.erb"
  variables({
      :settings_ini => node[:settings_ini]
  })
end
