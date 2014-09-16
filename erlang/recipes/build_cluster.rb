execute 'build_cluster' do
  command "echo"
  action :run
  
  instance_keys = node[:opsworks][:layers]['rabbitmq-base-node'][:instances].keys
  base_node = node[:opsworks][:layers]['rabbitmq-base-node'][:instances][instance_keys.first]
  
  begin
    Chef::Log.info(node['rabbitmq']['cluster'])
  rescue
  end
  
  instance_keys.each do |key|
    Chef::Log.info("#{node[:opsworks][:layers]['rabbitmq-base-node'][:instances][key].first}")
    Chef::Log.info("#{base_node}")
    Chef::Log.info("#{node[:opsworks][:layers]['rabbitmq-base-node'][:instances][key].first != base_node}")
    if node[:opsworks][:layers]['rabbitmq-base-node'][:instances][key].first != base_node
      command "sudo rabbitmqctl stop_app && sudo rabbitmqctl join_cluster rabbit@#{node[:opsworks][:layers]['rabbitmq-base-node'][:instances].first.first} &&
      sudo rabbitmqctl start_app"
      action :run
    end
  end
end
