Vagrant.configure("2") do |config|

  config.vm.define "master.vm" do |master|
    master.vm.box = "ubuntu/xenial64"
    master.vm.hostname = "master.vm"
    master.vm.provision "shell", path: "scripts/masterbootstrap.sh"
    master.vm.network "private_network", ip: "192.168.50.4"
    master.vm.provider "virtualbox" do |v|
      v.name = "PuppetMASTERBLASTER"
      v.memory = 4096
      v.cpus = 2
    end
  end

  config.vm.define "linuxA.vm" do |linuxA|
    linuxA.vm.box = "ubuntu/xenial64"
    linuxA.vm.hostname = "linuxA.vm"
    linuxA.vm.network "private_network", ip: "192.168.50.5"
    linuxA.vm.provision "shell", path: "scripts/linux_agent1.sh"
    linuxA.vm.provider "virtualbox" do |v|
      v.name = "Puppet_bitch1"
      v.memory = 2048
    end
  end

  config.vm.define "linux2.vm" do |linux2|
    linux2.vm.box = "ubuntu/xenial64"
    linux2.vm.hostname = "linux2.vm"
    linux2.vm.network "private_network", ip: "192.168.50.6"
    linux2.vm.provision "shell", path: "scripts/linux_agent2.sh"
    linux2.vm.provider "virtualbox" do |v|
      v.name = "Puppet_bitch2"
      v.memory = 2048
    end
  end
end
