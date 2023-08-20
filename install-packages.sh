#!/bin/bash

# Install requirements.
ansible-galaxy collection install -r requirements.yml

# Install everything!
ansible-playbook -K pwnos-setup.yml -i "localhost:22222," -u kriive --extra-vars "ansible_user=kriive ansible_port=22222"
