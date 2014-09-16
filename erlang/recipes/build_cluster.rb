execute 'build_cluster' do
  Chef::Log.info("#{node[:opsworks][:layers]['rabbitmq-base-node'][:instances]}")
  Chef::Log.info("#{node[:opsworks][:layers]['rabbitmq-base-node'][:instances].keys}")
  instance_keys = node[:opsworks][:layers]['rabbitmq-base-node'][:instances].keys
  instances = node[:opsworks][:layers]['rabbitmq-base-node'][:instances]
  base_node = node[:opsworks][:layers]['rabbitmq-base-node'][:instances].first
  instance_keys.each_with_index do |index, key|
    next if index == 0
    command "sudo rabbitmqctl stop_app && 
    sudo rabbitmqctl join_cluster rabbit@#{node[:opsworks][:layers]['rabbitmq-base-node'][:instances].first.first} &&
    sudo rabbitmqctl start_app"
    action :run
  end
end
