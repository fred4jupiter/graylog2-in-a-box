
# graylog2-in-a-box
## Usage

Vagrant box with Graylog2 server installed. The vagrant box uses a virtual private host adapter with the IP address 192.168.56.101.

### Usage for provisioning the vagrant box from a Linux/Unix system:

    vagrant up linux
    vagrant ssh linux

### Usage for provisioning the vagrant box from a Windows system:

Run the follwing commands:

	vagrant up windows
    vagrant ssh windows

## Graylog2 Web Interface

After waiting a long time for provisioning you can access graylog2 web interface under:

[http://192.168.56.101:9000/](http://192.168.56.101:9000/ "Graylog2 Web Console")

	Username: admin
	Password: admin

## Demo application for sending log messages

You can use the [log4j2-demo-app](https://github.com/fred4jupiter/log4j2-demo-app) for sending log messages to the graylog server.

## Helpfull commands

Testing if Elasticsearch is running:

	curl -XGET 'http://192.168.56.101:9200/_cluster/health?pretty=true'

Before running the ansible playbook you can test which tasks would be executed by running:

	ansible-playbook --syntax-check --list-tasks -i inventory playbook.yml