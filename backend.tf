terraform {
  backend "oci" {
    bucket   = "terraform-state-bucket"
    key      = "terraform.tfstate"
    region   = "us-ashburn-1"
  }
}