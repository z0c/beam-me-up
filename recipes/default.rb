#
# Cookbook:: beam-me-up
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'beam-me-up::desktop'
package 'curl'
include_recipe 'beam-me-up::git'
include_recipe 'heroku::default'
include_recipe 'beam-me-up::rvm'
package 'screen'
package 'slock'
package 'terminator'
package 'tree'
package 'vim'
package 'whois'
