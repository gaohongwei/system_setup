Download and Install vagrant/virtualbox
http://www.virtualbox.org/wiki/Downloads

vagrant list
# Create Vagrantfile
vagrant init hashicorp/precise64

vagrant up
vagrant box add hashicorp/precise64
vagrant box add ubuntu/trusty64
vagrant up
vagrant list

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  #onfig.vm.box = "bento/centos-7.4"
  config.vm.network :private_network, ip: "192.168.10.10"
  config.vm.network :forwarded_port, guest: 3000, host: 3000, host_ip: "localhost"
  config.vm.synced_folder "/Users/kevin.wei/aprivate", "/home/vagrant/aprivate"
end

Start rails s by
rails s -b 0.0.0.0
"b" stands for "bind" 
You'll want to make sure that the server is binded to 0.0.0.0 
so that all interfaces can access it.


vagrant up
vagrant halt
vagrant ssh
