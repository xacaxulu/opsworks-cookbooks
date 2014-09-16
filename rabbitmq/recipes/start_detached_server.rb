execute "start_detached_server" do
  command "sudo rabbitmq-server -detached"
  action :nothing
end
