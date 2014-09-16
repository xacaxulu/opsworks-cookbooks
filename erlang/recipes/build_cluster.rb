execute 'build_cluster' do
  Chef::Log.info("#{node[:opsworks][:layers][:instances].first}")
  command "echo; whoami"
  action :run
end