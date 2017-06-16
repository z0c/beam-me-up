#
# Cookbook:: beam-me-up
# Recipe:: vim
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'vim'

pathogen_base 'install pathogen!' do
  users [node['beam-me-up']['user']]
end

pathogen_plugin 'vim-airline' do
  github_org 'vim-airline'
  users [node['beam-me-up']['user']]
end

pathogen_plugin 'vim-fugitive' do
  github_org 'tpope'
  users [node['beam-me-up']['user']]
end
