bash 'build_cluster' do
  only_if "rabbitmqctl status", :returns => 0
  
  instance_keys.each do |key|
    Chef::Log.info("#{node[:opsworks][:layers]['rabbitmq-base-node'][:instances][key].first}")
    Chef::Log.info("#{base_node}")
    Chef::Log.info("#{node[:opsworks][:layers]['rabbitmq-base-node'][:instances][key].first != base_node}")
      command "rabbitmqctl stop_app && rabbitmqctl join_cluster rabbit@#{node[:opsworks][:layers]['rabbitmq-base-node'][:instances].first.first} &&
      rabbitmqctl start_app"
      action :run
    end
  end
end
