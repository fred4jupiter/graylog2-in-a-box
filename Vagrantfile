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

  # use the part for using ansible inside the box (e.g. running ansible from guest when the host does not support ansible (e.g. Windows))
  # config.vm.provision "shell", path: "install_in_box.sh"  
  # config.vm.provision "shell", inline: "cd /home/vagrant/provisioning && ansible-playbook -i inventory playbook.yml"

  # use the part for using ansible outside the box (running ansible from host)
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
  end

end
