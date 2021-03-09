# Example design for OCVS - vSphere 6.7

resource oci_core_network_security_group export_default_nsg {
  compartment_id = var.compartment_ocid
  display_name = "OCVS-DEFAULT-NSG"
  vcn_id = oci_core_vcn.export_OCVS-VCN.id
}

resource oci_core_network_security_group_security_rule export_NSG-default-rule_1 {
  description = "Allow traffic"
  destination_type          = ""
  direction                 = "INGRESS"
  network_security_group_id = oci_core_network_security_group.export_default_nsg.id
  protocol                  = "all"
  source                    = "0.0.0.0/0"
  source_type               = "CIDR_BLOCK"
  stateless                 = "false"
}

resource oci_core_network_security_group_security_rule export_NSG-default-rule_2 {
  description = "Allow traffic"
  destination               = "0.0.0.0/0"
  destination_type          = "CIDR_BLOCK"
  direction                 = "EGRESS"
  network_security_group_id = oci_core_network_security_group.export_default_nsg.id
  protocol                  = "all"
  source_type               = ""
  stateless                 = "false"
}
