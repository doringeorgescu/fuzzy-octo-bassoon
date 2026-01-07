terraform {
  backend "oci" {
    bucket   = "terraform-state-bucket"
    key      = "terraform.tfstate"
    namespace = "ocicustomeropshb"
    region   = "us-ashburn-1"
  }
}