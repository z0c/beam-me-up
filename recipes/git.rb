#
# Cookbook:: beam-me-up
# Recipe:: git
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'git'

template "/home/#{node['beam-me-up']['user']}/.gitconfig" do
  source 'gitconfig.erb'
  owner node['beam-me-up']['user']
  group node['beam-me-up']['user']
  mode '0664'
end
