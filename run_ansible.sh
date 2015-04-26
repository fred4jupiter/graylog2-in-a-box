#!/bin/bash

cd /home/vagrant/provisioning
sudo ansible-playbook -i inventory playbook.yml
