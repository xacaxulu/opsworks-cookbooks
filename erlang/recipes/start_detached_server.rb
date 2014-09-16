execute "start_detached_server" do
  Chef::Log.info(node[:opsworks][:stack][:name])
  Chef::Log.info("starting detached rabbitmq-server")
  Chef::Log.info(node.keys)
  # command "sudo rabbitmq-server -detached"
  command 'whoami'
  # not_if node[:rabbit]
end
