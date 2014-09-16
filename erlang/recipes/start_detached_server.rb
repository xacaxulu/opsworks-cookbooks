execute "start_detached_server" do
  Chef::Log.info("#{node[:opsworks][:stack][:name]}")
  Chef::Log.info("starting detached rabbitmq-server")
  command "sudo rabbitmq-server -detached"
  action :run
end
