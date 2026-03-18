resource "oci_core_instance" "Instanta_Pluto" {
    # Required
    availability_domain = "anmg:eu-amsterdam-1-AD-1"
    compartment_id = "ocid1.compartment.oc1..aaaaaaaa7s426i4aiawhimn4n32vxegdz4rdr6is7yuxnzyfypkuw73ejmkq"
    shape = "VM.Standard.E2.1.Micro"
    shape_config {
        ocpus = "1"
        memory_in_gbs = "1"
    }
    source_details {
        source_id = "ocid1.image.oc1.ams.aaaaaaaawpl3bd233zq3kfiu3yby4k6bvwti4kcyfxvph43f5wuwxoktqwcq"
        source_type = "image"
    }

    # Optional
    display_name = var.nume_instanta
    create_vnic_details {
        assign_public_ip = true
        subnet_id = var.subnetID
    }
    metadata = {
        ssh_authorized_keys = file("ssh-key-2026-03-18.key.pub")
    } 
    preserve_boot_volume = false
}