#VCN 
resource "oci_core_vcn" "VCN_Pluto" {
    #Required
    compartment_id = "ocid1.compartment.oc1..aaaaaaaa7s426i4aiawhimn4n32vxegdz4rdr6is7yuxnzyfypkuw73ejmkq"

    cidr_blocks = ["10.4.0.0/16"]
    display_name = "VCN_Terraform_1803"
}

resource "oci_core_subnet" "subnet_pluto" {
    #Required
    cidr_block = "10.4.1.0/24"
    compartment_id = "ocid1.compartment.oc1..aaaaaaaa7s426i4aiawhimn4n32vxegdz4rdr6is7yuxnzyfypkuw73ejmkq"
    vcn_id = oci_core_vcn.VCN_Pluto.id
}

resource "oci_core_internet_gateway" "pluto_internet_gateway" {
    #Required
    compartment_id = "ocid1.compartment.oc1..aaaaaaaa7s426i4aiawhimn4n32vxegdz4rdr6is7yuxnzyfypkuw73ejmkq"
    vcn_id = oci_core_vcn.VCN_Pluto.id

}

resource "oci_core_route_table" "pluto_route_table" {
    #Required
    compartment_id = "ocid1.compartment.oc1..aaaaaaaa7s426i4aiawhimn4n32vxegdz4rdr6is7yuxnzyfypkuw73ejmkq"
    vcn_id = oci_core_vcn.VCN_Pluto.id

    route_rules {
        #Required
        network_entity_id = oci_core_internet_gateway.pluto_internet_gateway.id
        destination = "0.0.0.0/0"
        destination_type = "CIDR_BLOCK"
    }
}