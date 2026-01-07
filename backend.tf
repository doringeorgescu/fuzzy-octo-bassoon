terraform {
  backend "oci" {
    bucket   = "terraform-state-bucket"
    key      = "terraform.tfstate"
    region   = "us-ashburn-1"
    user_ocid = "ocid1.user.oc1..aaaaaaaasfs5r4eij324barnbwkwcghkg53qg7w4s2but3rvtthfjozgh2zq"
    namespace = "ocicustomeropshb"
    tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaaouminldguaddw4th2rysvt2wezzx2nscn6snhkrc72dn6wjs27gq"
  }
}