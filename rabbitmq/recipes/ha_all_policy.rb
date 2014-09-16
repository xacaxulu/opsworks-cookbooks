include_recipe "rabbitmq::default"

rabbitmq_policy "ha-all" do
  pattern '^*\.'
  params {"ha-mode"=>"all"}
  priority 1
  action :set
end