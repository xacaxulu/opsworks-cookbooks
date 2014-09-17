execute 'build_cluster' do
  command "rabbitmqctl stop_app && 
  rabbitmqctl join_cluster rabbit@#{node[:opsworks][:layers]['rabbitmq-base-node'][:instances].first.first} &&
  rabbitmqctl start_app"
  action :run
  only_if "rabbitmqctl status", :returns => 0
end
