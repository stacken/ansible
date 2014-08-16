
test: check

check:
	ansible-playbook -i inventory site.yml --check --diff

install:
	ansible-playbook -i inventory site.yml --diff
