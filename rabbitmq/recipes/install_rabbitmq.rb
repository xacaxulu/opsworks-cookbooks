execute "install_rabbitmq" do
  Chef::Log.info("installing rabbitmq...")
  command "cat <<EOF > /etc/apt/sources.list.d/rabbitmq.list
  deb http://www.rabbitmq.com/debian/ testing main
  EOF"

  command "curl http://www.rabbitmq.com/rabbitmq-signing-key-public.asc -o /tmp/rabbitmq-signing-key-public.asc
  apt-key add /tmp/rabbitmq-signing-key-public.asc
  rm /tmp/rabbitmq-signing-key-public.asc"

  command "apt-get -qy update"
  command "apt-get -qy install rabbitmq-server"

  action :run
  Chef::Log.info("finished installing rabbitmq...")
end