.PHONY: deploy provision ssh

.DEFAULT_GOAL := deploy

provision:
	ansible-playbook -i inventory provision.yml

deploy:
	ansible-playbook -i deployment-inventory deployment.yml

ssh:
	ssh hay-speedcubing.com -l root

