execute 'build_cluster' do
  Chef::Log.info("#{node[:opsworks][:layers][0]")
  command "echo 'whoami; whoami'"
  action :run
end