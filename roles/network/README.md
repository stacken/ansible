# Stacken Network role
This role is used to configure the network on Stackens machines. At the moment I have only tested this agains a CentOS 7 system so use with care!

Debian-style config will be added when the need arises (eg. whenever I install the next debian system).

## How to use
Include the role in your playbook:
```
roles:
  - network
```
Define the network configuration in `host_vars/my-hostname.stacken.kth.se`. For example:
```
network_config:
  - device_name: eno2
    device_mac: "00:1e:4f:27:25:ee"
    device_bridge: bridge0
    device_proto: none
  - device_name: bridge0
    device_proto: dhcp
    device_type: Bridge
```

The full set of options are:

| value          | required           | default  |
|----------------|--------------------|----------|
| device_name    | yes                |          |
| device_onboot  | no                 | yes      |
| device_netboot | no                 | yes      |
| device_ipv6    | no                 | yes      |
| device_mac     | no                 |          |
| device_bridge  | no                 |          |
| device_proto   | no                 | dhcp     |
| device_addr    | no                 |          |
| device_netmask | yes if device_addr |          |
| device_gateway | yes if device_addr |          |
| device_addr6   | no                 |          |
| device_gateway6| yes if device_addr6|          |
| device_dns1    | no                 |          |
| device_dns2    | yes if device_dns1 |          |
| device_type    | no                 | Ethernet |
| device_nm      | no                 | no       |
