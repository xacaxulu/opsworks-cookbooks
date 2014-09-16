execute "start_detached_server" do
  Chef::Log.info(node[:opsworks][:stack][:name])
  Chef::Log.info("starting detached rabbitmq-server")
  Chef::Log.info(node[:hostname])
  Chef::Log.info(node[:current_user])
  Chef::Log.info(node[:chef_environment])
  Chef::Log.info(node[:chef_environment].keys)
  Chef::Log.info(node[:opsworks].keys)
  # command "sudo rabbitmq-server -detached"
  command 'whoami'
  # not_if node[:rabbit]
end
