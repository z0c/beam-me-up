#
# Cookbook:: beam-me-up
# Recipe:: rvm
#
# Copyright:: 2017, The Authors, All Rights Reserved.

node.default['rvm']['user_installs'] = [{ 
  'user'	 => 'lubuntu',
  'default_ruby' => 'ruby-2.5.5',
  'rubies'       => ['ruby-2.5.5'],
  'user_global_gems'  => [
    {'name': 'bundler'}
  ]
}]

include_recipe 'rvm::user'