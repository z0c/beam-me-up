#
# Cookbook:: beam-me-up
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'beam-me-up::desktop'
package 'curl'
package 'git'
include_recipe 'heroku::default'
include_recipe 'rvm::user'
package 'screen'
package 'slock'
package 'terminator'
package 'tree'
package 'vim'
package 'whois'
