execute "start_detached_server" do
  command "echo 'running whoami'; whoami"
  :user => 'sudo'
  command "rabbitmq-server -detached"
  action :run
  Chef::Log.info('made it')
end