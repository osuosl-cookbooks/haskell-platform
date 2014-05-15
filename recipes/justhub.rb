#
# Cookbook Name:: haskell-platform
# Recipe:: justhub
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
when "rhel"
  include_recipe "yum"

  yum_repository "justhub" do
    description "JustHub Haskell Repository"
    baseurl "http://sherkin.justhub.org/el#{node['platform_version'].to_i}"
    gpgkey "http://justhub.org/hub-lib/RPM-GPG-KEY-justhub-mail"
    action :create
  end
end
