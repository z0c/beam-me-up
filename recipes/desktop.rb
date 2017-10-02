#
# Cookbook:: beam-me-up
# Recipe:: desktop
#
# Copyright:: 2017, The Authors, All Rights Reserved.

bash 'set_resolution' do
  code "xrandr -s #{node['beam-me-up']['display']}"
  only_if "xrandr 2>/dev/null | grep -q \"#{node['beam-me-up']['display']}\""
  not_if "xrandr | grep \"#{node['beam-me-up']['display']}\" | grep '*'"
end

template "/home/#{node['beam-me-up']['user']}/.config/pcmanfm/lubuntu/desktop-items-0.conf" do
  source 'desktop-items-0.conf.erb'
  owner node['beam-me-up']['user']
  group node['beam-me-up']['user']
  mode '0664'
end

package 'gnome-themes-standard'
package 'gtk2-engines-murrine'
package 'autoconf'
package 'pkg-config'
package 'libgtk-3-dev'

directory "/home/#{node['beam-me-up']['user']}/.themes" do
  action :create
end

directory "/home/#{node['beam-me-up']['user']}/.themes/arc-grey-theme" do
  action :create
end

execute 'make-install-arc-grey-theme' do
  action :nothing
  command 'make install'
  cwd "/home/#{node['beam-me-up']['user']}/.themes/arc-grey-theme"
end

execute 'autogen-arc-grey-theme' do
  action :nothing
  command 'autogen.sh --prefix=/usr'
  cwd "/home/#{node['beam-me-up']['user']}/.themes/arc-grey-theme"
  notifies :run, 'execute[make-install-arc-grey-theme]'
end
  
execute 'git-clone-arc-grey-theme' do
  command 'git clone https://github.com/eti0/arc-grey-theme --depth 1'
  not_if { ::File.directory?("/home/#{node['beam-me-up']['user']}/.themes/arc-grey-theme") }
  notifies :run, 'execute[autogen-arc-grey-theme]'
end
