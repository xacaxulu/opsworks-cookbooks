bash "start_detached_server" do
  command 'rabbitmq-server -detached'
  action :run
  not_if "rabbitmqctl status", :returns => 0
end