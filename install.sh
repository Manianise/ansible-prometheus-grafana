#!/bin/bash

# Install Prometheus Ansible Collection
ansible-galaxy install -r requirements.yml &&

# Install collection of prometheus and Grafana
ansible-playbook set-collection-connexion.yml --ask-vault-pass &&

# Install everything on remote server
ansible-playbook -i inventory.ini prometheus-grafana-setup.yml --ask-vault-pass


