all:
	ansible-playbook -i ansible/inventory/hosts ansible/playbooks/install.yml --ask-sudo-pass
