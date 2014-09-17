execute "ha_policy_all" do
  Chef::Log.info("setting ha policy to ha-all...")
  command 'rabbitmqctl set_policy ha-all "^*\." '{"ha-mode":"all"}''
  action :run
end