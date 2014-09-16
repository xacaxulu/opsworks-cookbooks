execute 'build_cluster' do
  Chef::Log.info("#{node[:opsworks][:layers].methods}")
  command "echo 'whoami; whoami'"
  action :run
end