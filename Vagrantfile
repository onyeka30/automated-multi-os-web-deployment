Vagrant.configure("2") do |config|

  config.vm.define "scriptbox" do |scriptbox|
    scriptbox.vm.box = "eurolinux-vagrant/centos-stream-9"
    # Changed from 10.10 to 56.10
    scriptbox.vm.network "private_network", ip: "192.168.56.10"
    scriptbox.vm.hostname = "scriptbox"
    scriptbox.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
  end

  config.vm.define "web01" do |web01|
    web01.vm.box = "eurolinux-vagrant/centos-stream-9"
    # Changed from 10.11 to 56.11
    web01.vm.network "private_network", ip: "192.168.56.11"
    web01.vm.hostname = "web01"
  end
  
  config.vm.define "web02" do |web02|
    web02.vm.box = "eurolinux-vagrant/centos-stream-9"
    # Kept as 56.12 (incremented to avoid conflict with web01)
    web02.vm.network "private_network", ip: "192.168.56.12"
    web02.vm.hostname = "web02"
  end

  config.vm.define "web03" do |web03|
    web03.vm.box = "ubuntu/bionic64"
    # Changed from 10.13 to 56.13
    web03.vm.network "private_network", ip: "192.168.56.13"
    web03.vm.hostname = "web03"
  end
end
