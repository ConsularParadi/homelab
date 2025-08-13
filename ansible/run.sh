# !/usr/bin/bash
ansible-galaxy collection install -r requirements.yml
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/homelab
~/homebrew/bin/ansible-playbook -i inventory/main.ini playbooks/main.yml -K 

