execute "start_detached_server" do
  Chef::Log.info('heyyy')
  command "sudo rabbitmq-server -detached"
  action :run
end
