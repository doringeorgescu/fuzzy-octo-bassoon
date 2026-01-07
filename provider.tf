terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}

provider "oci" {
  region = "us-ashburn-1"
  user_ocid = "ocid1.user.oc1..aaaaaaaasfs5r4eij324barnbwkwcghkg53qg7w4s2but3rvtthfjozgh2zq"
  fingerprint = var.fingerprint
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaaouminldguaddw4th2rysvt2wezzx2nscn6snhkrc72dn6wjs27gq"
  # private_key_path = var.private_key_path
  private_key      = var.private_key 
}