Vagrant.configure("2") do |config|
  # machine-1
  config.vm.box = "ubuntu/focal64"
  config.vm.define "machine-1" do | w |
    w.vm.hostname = "machine-1"
    w.vm.network "private_network", ip: "192.168.33.21"
    w.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
      vb.name = "machine-1"
    end
    w.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y git wget vim curl net-tools
    SHELL
    w.vm.provision "shell", path: "./install-etcd.sh"
  end

  # machine-2
  config.vm.box = "ubuntu/focal64"
  config.vm.define "machine-2" do | w |
    w.vm.hostname = "machine-2"
    w.vm.network "private_network", ip: "192.168.33.22"
    w.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 1
      vb.name = "machine-2"
    end
    w.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y git wget vim curl net-tools
    SHELL
    w.vm.provision "shell", path: "./install-etcd.sh"
  end

  # machine-3
  config.vm.box = "ubuntu/focal64"
  config.vm.define "machine-3" do | w |
    w.vm.hostname = "machine-3"
    w.vm.network "private_network", ip: "192.168.33.23"
    w.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 1
      vb.name = "machine-3"
    end
    w.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y git wget vim curl net-tools
    SHELL
    w.vm.provision "shell", path: "./install-etcd.sh"
  end
  
end

