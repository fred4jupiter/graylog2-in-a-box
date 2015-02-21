# graylog2-in-a-box
Vagrant box with Graylog2 server installed.

**Usage:**

    vagrant up
	vagrant ssh
	cd ~/
	ansible-playbook -i inventory playbook.yml

after waiting a long time you can access graylog2 web interface under:

[http://192.168.56.100:9000/](http://192.168.56.100:9000/ "Graylog2 Web Console")
