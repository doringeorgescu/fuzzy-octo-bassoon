terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
  }
}

provider "oci" {
  region = "eu-amsterdam-1"
  user_ocid = "ocid1.user.oc1..aaaaaaaabiimwoetkepyo3eoj6vtqzgi6bmjeabb7kfdc5ipzkzrjmlm6srq"
  fingerprint = var.fingerprint
  tenancy_ocid = "ocid1.tenancy.oc1..aaaaaaaa3t6gp6xv43jlnh2gaepasnv2hteyzcxmglltwrnk647cu4xnbvsq"
  # private_key_path = var.private_key_path
  private_key      = var.private_key
}