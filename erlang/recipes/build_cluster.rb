execute 'build_cluster' do
  Chef::Log.info("#{node[:opsworks][:layers][0]}")
  action :run
end