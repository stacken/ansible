ansible
=======

Stacken Public Ansible Configuration

You need Ansible to execute this, install it with python-pip:

`# pip install ansible`

To simulate a run, use --check

`ansible-playbook -i inventory site.yml --check` or `make check`

To limit it to a specific host or group, do:

`ansible-playbook -i inventory site.yml --check -l xacto.stacken.kth.se`

or

`ansible-playbook -i inventory site.yml --check -l shell-servers`

To run this for real, just remove "--check".

To run on all servers, type `make install`.
