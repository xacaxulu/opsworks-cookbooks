execute 'build_cluster' do
  command "echo"
  action :run
  instance_keys = node[:opsworks][:layers]['rabbitmq-base-node'][:instances].keys
  instances = node[:opsworks][:layers]['rabbitmq-base-node'][:instances]
  base_node = node[:opsworks][:layers]['rabbitmq-base-node'][:instances].first.first.first
  Chef::Log.info("#{node[:opsworks][:layers]['rabbitmq-base-node'][:instances].first}")
  Chef::Log.info("#{instance_keys.first}")
  Chef::Log.info("#{instance_keys.last}")
  # instance_keys.each do |key|
  #   if node[:opsworks][:layers]['rabbitmq-base-node'][:instances].key
  #     command "sudo rabbitmqctl stop_app && sudo rabbitmqctl join_cluster rabbit@#{node[:opsworks][:layers]['rabbitmq-base-node'][:instances].first.first} &&
  #     sudo rabbitmqctl start_app"
  #     action :run
  #   end
  # end
end
