#!/bin/bash

sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install -y software-properties-common ansible git
git clone https://github.com/fred4jupiter/graylog2-in-a-box.git /home/vagrant/graylog2-in-a-box
cd /home/vagrant/graylog2-in-a-box/provisioning
sudo ansible-playbook -i inventory playbook.yml
