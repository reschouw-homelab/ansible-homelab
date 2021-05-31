NAT
===
This role enables IP Forwarding and NAT on an instance. 

Requirements
------------
iptables is used to set up the NAT portion. 
If used in AWS, the instance [source destination check](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_NAT_Instance.html#EIP_Disable_SrcDestCheck) must be disabled

Included Components
-------------------
Tasks to use systemd components and iptables to configure nat
Handlers to run these configurations if changes are made

Author
------
ryan@dorwinia.com

