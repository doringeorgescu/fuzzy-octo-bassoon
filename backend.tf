terraform {
  backend "oci" {
    bucket   = "bucket-terraform"
    key      = "terraform.tfstate"
    region   = "eu-amsterdam-1"
    namespace = "ax8jw5kp59s1"
    auth = "APIKey"
  }
}