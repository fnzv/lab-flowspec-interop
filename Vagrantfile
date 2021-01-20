# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: "echo ready"

  config.vm.define "core" do |core|
    core.vm.box = "generic/debian10"
    core.vm.hostname = "core"
    core.vm.synced_folder "core/", "/vagrant"
    core.vm.network "private_network", ip: "192.0.2.2"
    core.vm.provision :shell, path: "core/bootstrap.sh"
  end

  config.vm.define "controller" do |controller|
    controller.vm.box = "generic/debian10"
    controller.vm.hostname = "controller"
    controller.vm.synced_folder "controller/", "/vagrant"
    controller.vm.network "private_network", ip: "192.0.2.3"
    controller.vm.provision :shell, path: "controller/bootstrap.sh"
  end
end
