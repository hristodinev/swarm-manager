Vagrant.configure("2") do |config|

    config.vm.define "swarm-manager" do |manager|
        manager.vm.box="shekeriev/debian-11"
        manager.vm.hostname = "swarm-manager"
        manager.vm.network "private_network", ip: "192.168.99.101"
        manager.vm.provision "shell", path: "scripts/docker-setup.sh"
        manager.vm.provision "shell", path: "scripts/other-steps.sh"
        manager.vm.provision "shell", path: "scripts/swarm-manager.sh"
        manager.vm.provider :virtualbox do |vb|
            vb.memory = "1024"
            vb.cpus = "2"
        end
    end
  
    (2..3).each do |i|
        config.vm.define "worker0#{i}" do |worker|
          worker.vm.box = "shekeriev/debian-11"
          worker.vm.hostname = "worker#{i}"
          worker.vm.network :private_network, ip: "192.168.99.10#{i}"
          worker.vm.hostname = "worker#{i}"
          worker.vm.provision "shell", path: "scripts/docker-setup.sh"
          worker.vm.provision "shell", path: "scripts/other-steps.sh"
          worker.vm.provision "shell", path: "scripts/swarm-worker.sh"
          worker.vm.provider "virtualbox" do |vb|
            vb.memory = "1024"
            vb.cpus = "2"
          end
        end
      end
  end