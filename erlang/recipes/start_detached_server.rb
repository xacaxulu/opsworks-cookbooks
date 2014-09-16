execute "start_detached_server" do
  Chef::Log.info("node[:opsworks][:stack][:name]")
  puts "node[:opsworks][:stack][:name]"
  command "whoami"
  command "sudo rabbitmq-server -detached"
  action :run
end
