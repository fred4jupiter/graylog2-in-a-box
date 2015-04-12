# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network "private_network", ip: "192.168.56.101"
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
	vb.customize ["modifyvm", :id, "--cpus", "4"]
  end  

  config.vm.define "linux" do |linux|
      # install the 'vagrant plugin install vagrant-cachier' vagrant plugin to cache downloaded artifacts
	  if Vagrant.has_plugin?("vagrant-cachier")
		# Configure cached packages to be shared between instances of the same base box.
		# More info on http://fgrehm.viewdocs.io/vagrant-cachier/usage
		linux.cache.scope = :box

		# OPTIONAL: If you are using VirtualBox, you might want to use that to enable
		# NFS for shared folders. This is also very useful for vagrant-libvirt if you
		# want bi-directional sync
		# config.cache.synced_folder_opts = {
		#  type: :nfs,
		  # The nolock option can be useful for an NFSv3 client that wants to avoid the
		  # NLM sideband protocol. Without this option, apt-get might hang if it tries
		  # to lock files needed for /var/cache/* operations. All of this can be avoided
		  # by using NFSv4 everywhere. Please note that the tcp option is not the default.
		#  mount_options: ['rw', 'vers=3', 'tcp', 'nolock']
		# }
	  end
	  
	  linux.vm.provision "ansible" do |ansible|
		ansible.playbook = "provisioning/playbook.yml"
	  end
  end

  config.vm.define "windows" do |windows|
    # to prevent tty errors
    windows.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

    windows.vm.provision "shell", path: "install_in_box.sh"
  end
end
