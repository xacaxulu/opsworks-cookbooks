bash "start_detached_server" do
  not_if "rabbitmqctl status", :returns => 2
  command 'rabbitmq-server -detached'
  action :run
end