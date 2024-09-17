#!/bin/bash

# Install Prometheus Ansible Collection
ansible-galaxy install -r requirements.yml &&

# Install everything on remote server
ansible-playbook -i inventory.ini playbook.yml --ask-vault-pass


