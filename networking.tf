#VCN 
resource "oci_core_vcn" "VCN_Pluto" {
    #Required
    compartment_id = "ocid1.compartment.oc1..aaaaaaaaozjgrityvm6qhdbbc66wugj6s62awro6owqmyjbqhxb24duea7gq"

    cidr_blocks = ["10.4.0.0/16"]
    display_name = "VCN_Terraform_1607"
}

resource "oci_core_subnet" "subnet_pluto" {
    #Required
    cidr_block = "10.4.1.0/24"
    compartment_id = "ocid1.compartment.oc1..aaaaaaaaozjgrityvm6qhdbbc66wugj6s62awro6owqmyjbqhxb24duea7gq"
    vcn_id = oci_core_vcn.VCN_Pluto.id
}

resource "oci_core_internet_gateway" "pluto_internet_gateway" {
    #Required
    compartment_id = "ocid1.compartment.oc1..aaaaaaaaozjgrityvm6qhdbbc66wugj6s62awro6owqmyjbqhxb24duea7gq"
    vcn_id = oci_core_vcn.VCN_Pluto.id

}

resource "oci_core_route_table" "pluto_route_table" {
    #Required
    compartment_id = "ocid1.compartment.oc1..aaaaaaaaozjgrityvm6qhdbbc66wugj6s62awro6owqmyjbqhxb24duea7gq"
    vcn_id = oci_core_vcn.VCN_Pluto.id

    route_rules {
        #Required
        network_entity_id = oci_core_internet_gateway.pluto_internet_gateway.id
        destination = "0.0.0.0/0"
        destination_type = "CIDR_BLOCK"
    }
}