#
# Cookbook Name:: haskell-platform
# Recipe:: default
#
# Copyright 2014, Oregon State University
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
case node['platform_family']
when 'rhel'
  if node['haskell-platform']['repo_source'] == "epel"
    include_recipe 'yum-epel'
  elsif node['haskell-platform']['repo_source'] == "justhub"
    include_recipe 'haskell-platform::justhub'
  else
    raise ArgumentError, "Unknown value '#{node['haskell-platform']['repo_source']}' was passed"
  end
end

package "#{node['haskell-platform']['package_name']}" do
  version node['haskell-platform']['version'] if node['haskell-platform']['version']
end
