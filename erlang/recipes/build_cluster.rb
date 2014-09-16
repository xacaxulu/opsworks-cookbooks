execute 'build_cluster' do
  Chef::Log.info("#{node[:opsworks][:layers].map(&:name)}")
  command "echo 'whoami; whoami'"
  action :run
end