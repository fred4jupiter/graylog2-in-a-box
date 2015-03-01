#!/bin/bash

sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install -y software-properties-common ansible git
# cp -r /vagrant/provisioning /home/vagrant/provisioning
# sudo chown -R vagrant provisioning/
# chmod -x /home/vagrant/provisioning/inventory
# chmod -x /home/vagrant/provisioning/playbook.yml
