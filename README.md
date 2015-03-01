# graylog2-in-a-box

Vagrant box with Graylog2 server installed. The vagrant box uses a virtual private host adapter with the IP address 192.168.56.100.

**Usage for provisioning the vagrant box itself (e.g. when you start the vagrant box from a Windows OS):**

	vagrant up --provision-with inbox
	vagrant ssh
	cd ~/graylog2-in-a-box/provisioning
	ansible-playbook -i inventory playbook.yml

after waiting a long time you can access graylog2 web interface under:

[http://192.168.56.100:9000/](http://192.168.56.100:9000/ "Graylog2 Web Console")

**Usage for provisioning the vagrant box from a Linux/Unix system:**

    vagrant up --provision-with outside
	cd provisioning
	ansible-playbook -i inventory playbook.yml

**Notes:**

Before running the ansible playbook you can test which tasks would be executed by running:

	ansible-playbook --syntax-check --list-tasks -i inventory playbook.yml
