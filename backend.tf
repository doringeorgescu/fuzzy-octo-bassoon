terraform {
  backend "oci" {
    bucket   = "terraform-state-bucket"
    key      = "terraform.tfstate"
    region   = "us-ashburn-1"
    namespace = "ocicustomeropshb"
    auth = "APIKey"
    config_file_profile = "DEFAULT"
  }
}