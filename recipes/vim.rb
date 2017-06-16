#
# Cookbook:: beam-me-up
# Recipe:: vim
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'vim'

pathogen_base 'install pathogen!' do
  users [node['beam-me-up']['user']]
end
