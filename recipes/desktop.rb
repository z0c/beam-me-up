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
