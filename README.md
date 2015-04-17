
# graylog2-in-a-box #

Vagrant box with Graylog2 server installed. The vagrant box uses a virtual private host adapter with the IP address 192.168.56.101.

**Usage for provisioning the vagrant box from a Linux/Unix system:**

    vagrant up linux

**Usage on non (*)nix hosts (for provisioning the vagrant box itself (e.g. when you start the vagrant box from a Windows OS)):**

Run the follwing commands:

	vagrant up windows
	vagrant ssh windows	
	cd /home/vagrant && git clone https://github.com/fred4jupiter/graylog2-in-a-box.git
	cd ~/graylog2-in-a-box/provisioning
	sudo ansible-playbook -i inventory playbook.yml

##Graylog2 Web Interface##

After waiting a long time for provisioning you can access graylog2 web interface under:

[http://192.168.56.101:9000/](http://192.168.56.101:9000/ "Graylog2 Web Console")

	Username: admin
	Password: admin

## Helpfull commands ##

Testing if Elasticsearch is running:

	curl -XGET 'http://192.168.56.101:9200/_cluster/health?pretty=true'

Before running the ansible playbook you can test which tasks would be executed by running:

	ansible-playbook --syntax-check --list-tasks -i inventory playbook.yml