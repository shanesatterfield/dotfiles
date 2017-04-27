all:
	sudo ansible-playbook -i ansible/inventory/hosts ansible/playbooks/install.yml
