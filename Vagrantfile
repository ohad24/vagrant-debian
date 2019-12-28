# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "debian/buster64"

  config.vm.provision :docker
  config.vm.provision :docker_compose

  # config.vm.network "forwarded_port", guest: 2380, host: 2380

  config.vm.network "private_network", ip: "192.168.40.100"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  config.vm.provision "shell", path: "bootstrap.sh"

  # config.vm.synced_folder ".", "/vagrant"
  
end
