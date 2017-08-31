# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian"

  config.vm.define :rancher do |rancher|
    rancher.vm.hostname = "rancher-server"
    rancher.vm.network :private_network, :ip => "192.168.12.2"

    rancher.vm.provision "docker" do |d|
      d.run "rancher", image: "rancher/server", args: "-d --restart=unless-stopped -p 8080:8080"
    end

  end

  config.vm.define :server1 do |server1|
    server1.vm.hostname = "server1"
    server1.vm.network :private_network, :ip => "192.168.12.3"

    server1.vm.provision "shell", path: "start.sh"
  end

  config.vm.define :server2 do |server2|
    server2.vm.hostname = "server2"
    server2.vm.network :private_network, :ip => "192.168.12.4"

    server2.vm.provision "shell", path: "start.sh"
  end

  config.vm.define :server3 do |server3|
    server3.vm.hostname = "server3"
    server3.vm.network :private_network, :ip => "192.168.12.5"

    server3.vm.provision "shell", path: "start.sh"
  end

end
