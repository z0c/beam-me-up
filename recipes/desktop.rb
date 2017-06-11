#
# Cookbook:: beam-me-up
# Recipe:: desktop
#
# Copyright:: 2017, The Authors, All Rights Reserved.

bash 'set_resolution' do
  code <<-EOH
    pdisplay='#{node['beam-me-up']['display']}'
    if xrandr 2>/dev/null | grep -q "#{node['beam-me-up']['display']}"; then
      xrandr -s $pdisplay
    fi
  EOH
  # Second grep is NOT working in here
  not_if "xrandr | grep -q \"#{node['beam-me-up']['display']}\" | grep \\*"
end
