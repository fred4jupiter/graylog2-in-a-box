# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :private_network, ip: "192.168.56.100"
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
	vb.customize ["modifyvm", :id, "--cpus", "4"]
  end  
  # to prevent tty errors
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  config.vm.provision "shell", inline: "sudo apt-add-repository ppa:ansible/ansible -y"  
  config.vm.provision "shell", inline: "sudo apt-get update -y"  
  config.vm.provision "shell", inline: "sudo apt-get install -y software-properties-common ansible git"
  config.vm.provision "shell", inline: "cp -r /vagrant/provisioning /home/vagrant/provisioning"
  config.vm.provision "shell", inline: "sudo chown -R vagrant provisioning/"  
  config.vm.provision "shell", inline: "chmod -x /home/vagrant/provisioning/inventory"
  config.vm.provision "shell", inline: "chmod -x /home/vagrant/provisioning/playbook.yml"  
end
