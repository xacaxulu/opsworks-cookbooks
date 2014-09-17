bash "start_detached_server" do
  not_if "sudo rabbitmqctl status", :returns => 0
  command 'sudo rabbitmq-server -detached'
  action :run
end