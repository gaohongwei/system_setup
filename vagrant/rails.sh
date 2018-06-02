Download and Install vagrant/virtualbox
http://www.virtualbox.org/wiki/Downloads

Vagrant.configure("2") do |config|  
  config.vm.box = "bento/ubuntu-18.04"  
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end
  #config.ssh.username = "web"
  #onfig.ssh.username = "password"
  #onfig.vm.network :private_network, ip: "192.168.10.10"
  #onfig.vm.network "forwarded_port", guest: 5000, host: 5000, host_ip: "localhost", protocol: "tcp", auto_correct: true
  config.vm.network "forwarded_port", guest: 9000, host: 9000, auto_correct: true
  config.vm.network "forwarded_port", guest: 22,   host: 2222, auto_correct: true
     
  config.vm.synced_folder "/Users/kwei/code", "/home/web/code"
  config.vm.synced_folder "/Users/kwei/atry", "/home/web/atry"  
end

#ssh-copy-id -p 2222 web@localhost
#ssh -p 2222 web@localhost
#ssh -p '2222' 'web@localhost'
# vagrant box list
# vagrant install ubuntu/trusty64 

Start rails s by
rails s -b 0.0.0.0
"b" stands for "bind" 
You'll want to make sure that the server is binded to 0.0.0.0 
so that all interfaces can access it.

alias rs="rails s -b 0.0.0.0 -p 9000"

vagrant up
vagrant halt
vagrant ssh
