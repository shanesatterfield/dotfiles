all:
	ansible-playbook -i ansible/inventory/hosts ansible/playbooks/install.yml --ask-sudo-pass

rpi:
	ansible-playbook -i ansible/inventory/rpi ansible/playbooks/rpi-install.yml --ask-pass
