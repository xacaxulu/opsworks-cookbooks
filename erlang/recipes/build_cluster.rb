execute 'build_cluster' do
  Chef::Log.info("#{node[:opsworks][:layers].keys}")
  command "echo 'whoami; whoami'"
  action :run
end