#
# Cookbook:: beam-me-up
# Recipe:: terminator
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'terminator'

directory "/home/#{node['beam-me-up']['user']}/.config/terminator" do
  action :create
  recursive true
  owner node['beam-me-up']['user']
  group node['beam-me-up']['user']
end

template "/home/#{node['beam-me-up']['user']}/.config/terminator/config" do
  source 'terminator.erb'
  owner node['beam-me-up']['user']
  group node['beam-me-up']['user']
  mode '0664'
end
