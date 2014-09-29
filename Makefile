
test: check

check: deps
	ansible-playbook -i inventory site.yml -u root --check --diff

install: deps
	ansible-playbook -i inventory site.yml -u root --diff

deps: roles/nsg.galaxy/tasks/main.yml
	ansible-playbook -i localhost, setup.yml

roles/nsg.galaxy/tasks/main.yml:
	mkdir -p roles
	ansible-galaxy install nsg.galaxy -p roles
