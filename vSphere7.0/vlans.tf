# Example design for OCVS - vSphere 7.0
# VLANs for the OCVS elements (vCenter, NSX, HCX, vMotion, vSAN)

resource oci_core_vlan export_VLAN-OCVS-NSX-Edge-Uplink1 {
  availability_domain = var.AD
  cidr_block          = "10.50.0.32/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-NSX Edge Uplink 1"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "1251"
  nsg_ids = [
    oci_core_network_security_group.export_UPLINK1_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}

resource oci_core_vlan export_VLAN-OCVS-NSX-Edge-Uplink2 {
  availability_domain = var.AD
  cidr_block          = "192.168.0.0/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-NSX Edge Uplink 2"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "2443"
  nsg_ids = [
    oci_core_network_security_group.export_UPLINK2_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}

resource oci_core_vlan export_VLAN-OCVS-NSX-Edge-VTEP {
  availability_domain = var.AD
  cidr_block          = "192.168.0.32/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-NSX Edge VTEP"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "3404"
    nsg_ids = [
    oci_core_network_security_group.export_EdgeVTEP_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}

resource oci_core_vlan export_VLAN-OCVS-NSX-VTEP {
  availability_domain = var.AD
  cidr_block          = "192.168.0.64/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-NSX VTEP"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "2078"
    nsg_ids = [
    oci_core_network_security_group.export_VTEP_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}

resource oci_core_vlan export_VLAN-OCVS-vMotion {
  availability_domain = var.AD
  cidr_block          = "192.168.0.96/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-vMotion"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "3256"
    nsg_ids = [
    oci_core_network_security_group.export_vMOTION_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}


resource oci_core_vlan export_VLAN-OCVS-vSAN {
  availability_domain = var.AD
  cidr_block          = "192.168.0.128/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-vSAN"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "3325"
  nsg_ids = [
    oci_core_network_security_group.export_vSAN_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}

resource oci_core_vlan export_VLAN-OCVS-vSphere {
  availability_domain = var.AD
  cidr_block          = "10.50.0.64/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-vSphere"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "3066"
  nsg_ids = [
    oci_core_network_security_group.export_vSPHERE_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}

resource oci_core_vlan export_VLAN-OCVS-HCX {
  availability_domain = var.AD
  cidr_block          = "10.50.0.96/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-HCX"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "2451"
  nsg_ids = [
    oci_core_network_security_group.export_HCX_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}


resource oci_core_vlan export_VLAN-OCVS-ReplicationNet {
  availability_domain = var.AD
  cidr_block          = "192.168.0.160/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-ReplicationNet"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "3946"
  nsg_ids = [
    oci_core_network_security_group.export_ReplicationNET_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}

resource oci_core_vlan export_VLAN-OCVS-ProvisionNet {
  availability_domain = var.AD
  cidr_block          = "192.168.0.192/27"
  compartment_id      = var.compartment_ocid
  display_name = "VLAN-OCVS-ProvisionNet"
  vcn_id         = oci_core_vcn.export_OCVS-VCN.id
  vlan_tag       = "3303"
  nsg_ids = [
    oci_core_network_security_group.export_ProvisionNET_nsg.id,
  ]
  route_table_id = oci_core_route_table.export_Route-Table-for-OCVS.id
}







