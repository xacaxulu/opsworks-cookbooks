execute 'build_cluster' do
  # Chef::Log.info("#{node[:opsworks][:layers]}")
  command "echo; whoami"
  action :run
end