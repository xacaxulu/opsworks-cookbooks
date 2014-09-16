execute "start_detached_server" do
  command "rabbitmq-server -detached"
  action :run
end