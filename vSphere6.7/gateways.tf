# Example design for OCVS - vSphere 6.7

resource oci_core_nat_gateway export_NAT-Gateway {
  block_traffic  = "false"
  compartment_id = var.compartment_ocid

  display_name = "NAT Gateway"
  vcn_id       = oci_core_vcn.export_OCVS-VCN.id
}


resource oci_core_route_table export_Route-Table-for-OCVS {
  compartment_id = var.compartment_ocid

  display_name = "Route Table for OCVS networks"
  route_rules {
    #description = <<Optional value not found in discovery>>
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_nat_gateway.export_NAT-Gateway.id
  }
  vcn_id = oci_core_vcn.export_OCVS-VCN.id
  
}

