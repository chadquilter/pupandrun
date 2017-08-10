Vagrant.configure("2") do |config|

  config.vm.define "blaster" do |master|
    master.vm.box = "centos/7"
    master.vm.hostname = "puppet"
    master.vm.provision "shell", path: "scripts/masterbootstrap.sh"
    master.vm.network "private_network", ip: "192.168.50.4"
    master.vm.provision "shell", path: "scripts/masterbootstrap.sh"
    master.vm.provider "virtualbox" do |v|
      v.name = "blaster"
      v.memory = 4096
      v.cpus = 2
    end
  end

  config.vm.define "beavis" do |linux|
    linux.vm.box = "centos/7"
    linux.vm.hostname = "beavis"
    linux.vm.network "private_network", ip: "192.168.50.5"
    linux.vm.provision "shell", path: "scripts/linux_agent2.sh"
    linux.vm.provider "virtualbox" do |v|
      v.name = "beavis"
      v.memory = 2048
    end
  end

  config.vm.define "butthead" do |linux|
    linux.vm.box = "centos/7"
    linux.vm.hostname = "butthead"
    linux.vm.network "private_network", ip: "192.168.50.6"
    linux.vm.provision "shell", path: "scripts/linux_agent1.sh"
    linux.vm.provider "virtualbox" do |v|
      v.name = "butthead"
      v.memory = 2048
    end
  end

  config.vm.define "ns1" do |linux|
    linux.vm.box = "centos/7"
    linux.vm.hostname = "ns1"
    linux.vm.network "private_network", ip: "10.128.10.11"
    #linux.vm.provision "shell", path: "scripts/linux_agent3.sh"
    linux.vm.provider "virtualbox" do |v|
      v.name = "ns1"
      v.memory = 2048
    end
  end

  config.vm.define "ns2" do |linux|
    linux.vm.box = "centos/7"
    linux.vm.hostname = "ns2"
    linux.vm.network "private_network", ip: "10.128.20.12"
    #linux.vm.provision "shell", path: "scripts/linux_agent4.sh"
    linux.vm.provider "virtualbox" do |v|
      v.name = "ns2"
      v.memory = 2048
    end
  end


end
