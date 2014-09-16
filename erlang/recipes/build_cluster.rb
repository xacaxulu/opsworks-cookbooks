execute 'build_cluster' do
  command "echo 'whoami; whoami'"
  action :run
  Chef::Log.info("#{node[:opsworks][:layers].map(&:name)}")
  
end