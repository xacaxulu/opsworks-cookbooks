execute "start_detached_server" do
  :user => 'sudo'
  command "rabbitmq-server -detached"
  action :run
  Chef::Log.info('made it')
end