bash "start_detached_server" do
  not_if "rabbitmqctl status", :returns => 2
  command 'rabbitmq-server -detached'
  Chef::Log.info('returned not 2')
  action :run
end