# Example design for OCVS - vSphere 6.7
# VCN for OCVS Deployment
resource oci_core_vcn export_OCVS-VCN {
  
  cidr_blocks = [
    "10.0.0.0/25",
    "192.168.0.0/24",
  ]
  compartment_id = var.compartment_ocid
  display_name = "VCN-OCVS"
  dns_label    = "ocvs"
}

# Subnet for the ESXi / VMkernel network

resource oci_core_subnet export_Subnet-OCVS {
  cidr_block     = "10.0.0.0/27"
  compartment_id = var.compartment_ocid
  display_name    = "Subnet-OCVS"
  dns_label       = "servers"
  prohibit_public_ip_on_vnic = "true"
  vcn_id = oci_core_vcn.export_OCVS-VCN.id
  security_list_ids = [
    oci_core_security_list.export_Security-List-for-Subnet-OCVS.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}

resource oci_core_security_list export_Security-List-for-Subnet-OCVS {
  compartment_id = var.compartment_ocid
  display_name = "Security List for Subnet-OCVS"
  vcn_id = oci_core_vcn.export_OCVS-VCN.id
  egress_security_rules {
    description      = "Full Outbound Access"
    destination      = "0.0.0.0/0"
    destination_type = "CIDR_BLOCK"
    protocol  = "all"
    stateless = "false"
  }
  ingress_security_rules {
    description = "Full Inbound Access"
    protocol    = "all"
    source      = "0.0.0.0/0"
    source_type = "CIDR_BLOCK"
    stateless   = "false"
  }
}

