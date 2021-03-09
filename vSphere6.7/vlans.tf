# Example design for OCVS - vSphere 6.7
# VLANs for the OCVS elements (vCenter, NSX, HCX, vMotion, vSAN)

resource oci_core_vlan export_VLAN-OCVS-NSX-Edge-Uplink1 {
  availability_domain = var.AD
  cidr_block          = "10.0.0.32/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-NSX Edge Uplink 1"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "2468"
  nsg_ids = [
    oci_core_network_security_group.export_default_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}

resource oci_core_vlan export_VLAN-OCVS-NSX-Edge-Uplink2 {
  availability_domain = var.AD
  cidr_block          = "192.168.0.0/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-NSX Edge Uplink 2"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "1119"
  nsg_ids = [
    oci_core_network_security_group.export_default_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}


resource oci_core_vlan export_VLAN-OCVS-NSX-Edge-VTEP {
  availability_domain = var.AD
  cidr_block          = "192.168.0.32/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-NSX Edge VTEP"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "3812"
    nsg_ids = [
    oci_core_network_security_group.export_default_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}

resource oci_core_vlan export_VLAN-OCVS-NSX-VTEP {
  availability_domain = var.AD
  cidr_block          = "192.168.0.64/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-NSX VTEP"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "2573"
    nsg_ids = [
    oci_core_network_security_group.export_default_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}

resource oci_core_vlan export_VLAN-OCVS-vMotion {
  availability_domain = var.AD
  cidr_block          = "192.168.0.96/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-vMotion"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "3156"
    nsg_ids = [
    oci_core_network_security_group.export_default_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}


resource oci_core_vlan export_VLAN-OCVS-vSAN {
  availability_domain = var.AD
  cidr_block          = "192.168.0.128/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-vSAN"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "2554"
  nsg_ids = [
    oci_core_network_security_group.export_default_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}


resource oci_core_vlan export_VLAN-OCVS-HCX {
  availability_domain = var.AD
  cidr_block          = "10.0.0.64/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-HCX"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "1663"
  nsg_ids = [
    oci_core_network_security_group.export_default_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}

resource oci_core_vlan export_VLAN-OCVS-vSphere {
  availability_domain = var.AD
  cidr_block          = "10.0.0.96/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-vSphere"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "1523"
  nsg_ids = [
    oci_core_network_security_group.export_default_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}




