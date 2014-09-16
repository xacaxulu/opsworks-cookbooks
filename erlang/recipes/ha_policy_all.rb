rabbitmq_policy "ha-all" do
  Chef::Log.info("setting ha policy to ha-all...")
  pattern '^*\.'
  params {"ha-mode"=>"all"}
  priority 1
  action :set
end