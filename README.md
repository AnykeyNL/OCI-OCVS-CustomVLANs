# OCI-OCVS-CustomerVLANs
Terraform script for custom vLAN design for Oracle Cloud VMware Solution (OCVS)

This terraform script is designed to deploy OCVS in a smaller CIDR allocation then the default /22 allocation.

Run this terraform script before OCVS provisioning. At the time of OCVS provisioning, Select "Existing Subnet and VLANs" and match up the VLAN for each component.

The terraform script will create the VCN, Subnet, VLANs, NAT Gateway, route tables and security lists

 