#
# Cookbook:: beam-me-up
# Recipe:: git
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'git'

template '/home/lubuntu/.gitconfig' do
  source 'gitconfig.erb'
  owner 'lubuntu'
  group 'lubuntu'
  mode '0664'
end
