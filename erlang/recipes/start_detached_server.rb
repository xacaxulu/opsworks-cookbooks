bash "check_status" do
  command 'rabbitmqctl status'
  returns [0]
end

execute "start_detached_server" do
  command 'whoami'
  action :run
end