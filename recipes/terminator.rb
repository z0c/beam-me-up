#
# Cookbook:: beam-me-up
# Recipe:: terminator
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'terminator'

directory '/home/lubuntu/.config/terminator' do
  action :create
  recursive true
  owner 'lubuntu'
  group 'lubuntu'

end

template '/home/lubuntu/.config/terminator/config' do
  source 'terminator.erb'
  owner 'lubuntu'
  group 'lubuntu'
  mode '0664'
end
