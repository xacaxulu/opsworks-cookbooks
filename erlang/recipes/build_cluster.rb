execute 'build_cluster' do
  Chef::Log.info("#{node[:opsworks][:layers]}")
  Chef::Log.info("#{node[:opsworks][:layers].first}")
end