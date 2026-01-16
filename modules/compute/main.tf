resource "oci_core_instance" "Instanta_Pluto" {
    # Required
    availability_domain = "ntyR:US-ASHBURN-AD-1"
    compartment_id = "ocid1.compartment.oc1..aaaaaaaaozjgrityvm6qhdbbc66wugj6s62awro6owqmyjbqhxb24duea7gq"
    shape = "VM.Standard.E6.Flex"
    shape_config {
        ocpus = "8"
        memory_in_gbs = "36"
    }
    source_details {
        source_id = "ocid1.image.oc1.iad.aaaaaaaaglxne5nh73mxqppl3fkzkqdlda3k22y6oyxcvy6gcaxxsym54mca"
        source_type = "image"
    }

    # Optional
    display_name = var.nume_instanta
    create_vnic_details {
        assign_public_ip = true
        subnet_id = var.subnetID
    }
    metadata = {
        ssh_authorized_keys = file("ssh-key-2025-08-15.key.pub")
    } 
    preserve_boot_volume = false
}