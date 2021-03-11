# Example design for OCVS - vSphere 7.0

# --[ Provision Subnet / ESXi Servers ]--------------------------------------------------
resource oci_core_network_security_group export_ESXi_nsg {
  compartment_id = var.compartment_ocid
  display_name = "OCVS-ESXi-NSG"
  vcn_id = oci_core_vcn.export_OCVS-VCN.id
}

resource oci_core_network_security_group_security_rule export_NSG-ESXi-rule_1 {
  description = "Allow traffic"
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.export_ESXi_nsg.id
  protocol                  = "all"
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
}

resource oci_core_network_security_group_security_rule export_NSG-ESXi-rule_2 {
  description = "Allow traffic"
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.export_ESXi_nsg.id
  protocol                  = "all"
  source_type               = ""
  stateless                 = "false"
}

# --[ VLAN Edge Uplink 1 ]--------------------------------------------------
resource oci_core_network_security_group export_UPLINK1_nsg {
  compartment_id = var.compartment_ocid
  display_name = "OCVS-UPLINK1-NSG"
  vcn_id = oci_core_vcn.export_OCVS-VCN.id
}

resource oci_core_network_security_group_security_rule export_NSG-UPLINK1-rule_1 {
  description = "Allow traffic"
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.export_UPLINK1_nsg.id
  protocol                  = "all"
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
}

resource oci_core_network_security_group_security_rule export_NSG-UPLINK1-rule_2 {
  description = "Allow traffic"
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.export_UPLINK1_nsg.id
  protocol                  = "all"
  source_type               = ""
  stateless                 = "false"
}

# --[ VLAN Edge Uplink 2 ]--------------------------------------------------
resource oci_core_network_security_group export_UPLINK2_nsg {
  compartment_id = var.compartment_ocid
  display_name = "OCVS-UPLINK2-NSG"
  vcn_id = oci_core_vcn.export_OCVS-VCN.id
}

resource oci_core_network_security_group_security_rule export_NSG-UPLINK2-rule_1 {
  description = "Allow traffic"
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.export_UPLINK2_nsg.id
  protocol                  = "all"
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
}

resource oci_core_network_security_group_security_rule export_NSG-UPLINK2-rule_2 {
  description = "Allow traffic"
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.export_UPLINK2_nsg.id
  protocol                  = "all"
  source_type               = ""
  stateless                 = "false"
}

# --[ VLAN EdgeVTEP ]--------------------------------------------------
resource oci_core_network_security_group export_EdgeVTEP_nsg {
  compartment_id = var.compartment_ocid
  display_name = "OCVS-EdgeVTEP-NSG"
  vcn_id = oci_core_vcn.export_OCVS-VCN.id
}

resource oci_core_network_security_group_security_rule export_NSG-EdgeVTEP-rule_1 {
  description = "Allow traffic"
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.export_EdgeVTEP_nsg.id
  protocol                  = "all"
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
}

resource oci_core_network_security_group_security_rule export_NSG-EdgeVTEP-rule_2 {
  description = "Allow traffic"
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.export_EdgeVTEP_nsg.id
  protocol                  = "all"
  source_type               = ""
  stateless                 = "false"
}

# --[ VLAN VTEP ]--------------------------------------------------
resource oci_core_network_security_group export_VTEP_nsg {
  compartment_id = var.compartment_ocid
  display_name = "OCVS-VTEP-NSG"
  vcn_id = oci_core_vcn.export_OCVS-VCN.id
}

resource oci_core_network_security_group_security_rule export_NSG-VTEP-rule_1 {
  description = "Allow traffic"
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.export_VTEP_nsg.id
  protocol                  = "all"
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
}

resource oci_core_network_security_group_security_rule export_NSG-VTEP-rule_2 {
  description = "Allow traffic"
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.export_VTEP_nsg.id
  protocol                  = "all"
  source_type               = ""
  stateless                 = "false"
}

# --[ VLAN vMOTION ]--------------------------------------------------
resource oci_core_network_security_group export_vMOTION_nsg {
  compartment_id = var.compartment_ocid
  display_name = "OCVS-vMOTION-NSG"
  vcn_id = oci_core_vcn.export_OCVS-VCN.id
}

resource oci_core_network_security_group_security_rule export_NSG-vMOTION-rule_1 {
  description = "Allow traffic"
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.export_vMOTION_nsg.id
  protocol                  = "all"
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
}

resource oci_core_network_security_group_security_rule export_NSG-vMOTION-rule_2 {
  description = "Allow traffic"
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.export_vMOTION_nsg.id
  protocol                  = "all"
  source_type               = ""
  stateless                 = "false"
}

# --[ VLAN vSAN ]--------------------------------------------------
resource oci_core_network_security_group export_vSAN_nsg {
  compartment_id = var.compartment_ocid
  display_name = "OCVS-vSAN-NSG"
  vcn_id = oci_core_vcn.export_OCVS-VCN.id
}

resource oci_core_network_security_group_security_rule export_NSG-vSAN-rule_1 {
  description = "Allow traffic"
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.export_vSAN_nsg.id
  protocol                  = "all"
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
}

resource oci_core_network_security_group_security_rule export_NSG-vSAN-rule_2 {
  description = "Allow traffic"
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.export_vSAN_nsg.id
  protocol                  = "all"
  source_type               = ""
  stateless                 = "false"
}

# --[ VLAN vSPHERE ]--------------------------------------------------
resource oci_core_network_security_group export_vSPHERE_nsg {
  compartment_id = var.compartment_ocid
  display_name = "OCVS-vSPHERE-NSG"
  vcn_id = oci_core_vcn.export_OCVS-VCN.id
}

resource oci_core_network_security_group_security_rule export_NSG-vSPHERE-rule_1 {
  description = "Allow traffic"
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.export_vSPHERE_nsg.id
  protocol                  = "all"
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
}

resource oci_core_network_security_group_security_rule export_NSG-vSPHERE-rule_2 {
  description = "Allow traffic"
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.export_vSPHERE_nsg.id
  protocol                  = "all"
  source_type               = ""
  stateless                 = "false"
}

# --[ VLAN HCX ]--------------------------------------------------
resource oci_core_network_security_group export_HCX_nsg {
  compartment_id = var.compartment_ocid
  display_name = "OCVS-HCX-NSG"
  vcn_id = oci_core_vcn.export_OCVS-VCN.id
}

resource oci_core_network_security_group_security_rule export_NSG-HCX-rule_1 {
  description = "Allow traffic"
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.export_HCX_nsg.id
  protocol                  = "all"
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
}

resource oci_core_network_security_group_security_rule export_NSG-HCX-rule_2 {
  description = "Allow traffic"
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.export_HCX_nsg.id
  protocol                  = "all"
  source_type               = ""
  stateless                 = "false"
}

# --[ VLAN ReplicationNET ]--------------------------------------------------
resource oci_core_network_security_group export_ReplicationNET_nsg {
  compartment_id = var.compartment_ocid
  display_name = "OCVS-ReplicationNET-NSG"
  vcn_id = oci_core_vcn.export_OCVS-VCN.id
}

resource oci_core_network_security_group_security_rule export_NSG-ReplicationNET-rule_1 {
  description = "Allow traffic"
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.export_ReplicationNET_nsg.id
  protocol                  = "all"
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
}

resource oci_core_network_security_group_security_rule export_NSG-ReplicationNET-rule_2 {
  description = "Allow traffic"
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.export_ReplicationNET_nsg.id
  protocol                  = "all"
  source_type               = ""
  stateless                 = "false"
}

# --[ VLAN ProvisionNET ]--------------------------------------------------
resource oci_core_network_security_group export_ProvisionNET_nsg {
  compartment_id = var.compartment_ocid
  display_name = "OCVS-ProvisionNET-NSG"
  vcn_id = oci_core_vcn.export_OCVS-VCN.id
}

resource oci_core_network_security_group_security_rule export_NSG-ProvisionNET-rule_1 {
  description = "Allow traffic"
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.export_ProvisionNET_nsg.id
  protocol                  = "all"
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
}

resource oci_core_network_security_group_security_rule export_NSG-ProvisionNET-rule_2 {
  description = "Allow traffic"
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.export_ProvisionNET_nsg.id
  protocol                  = "all"
  source_type               = ""
  stateless                 = "false"
}










