#
# Cookbook:: beam-me-up
# Recipe:: vim_terraform
#
# Copyright:: 2017, The Authors, All Rights Reserved.

pathogen_plugin 'vim-terraform' do
  github_org 'hashivim'
  users [node['beam-me-up']['user']]
end
