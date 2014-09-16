execute 'build_cluster' do
  Chef::Log.info("#{node[:opsworks][:layers].try(:first)}")
  command "echo 'whoami; whoami'"
  action :run
end