execute "ha_policy_all" do
  Chef::Log.info("setting ha policy to ha-all...")
  pattern = /^*\./
  command "rabbitmqctl set_policy ha-all '#{pattern}' '{'ha-mode':'all'}'"
  action :run
end