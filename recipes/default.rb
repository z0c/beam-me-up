#
# Cookbook:: beam-me-up
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'beam-me-up::desktop'
package 'curl'
include_recipe 'beam-me-up::git'
package 'screen'
package 'slock'
include_recipe 'beam-me-up::terminator'
package 'tree'
include_recipe 'beam-me-up::vim'
package 'whois'
