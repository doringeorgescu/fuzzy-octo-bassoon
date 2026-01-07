variable "nume_instanta" {
  type        = string
  description = "The name the instance will get"
  
}

variable "subnetID" {
  type        = string
  description = "ID of the subnet that the instance will get placed in"
  
}

variable "fingerprint"{
description = "Fingerprint of the API key"
type        = string
sensitive   = true
}

/* variable "private_key_path" {
  type        = string
  description = "Path to your private API key file"
  sensitive   = true
} */ 

variable "private_key" {
  description = "Content of the private API key (PEM format)"
  type        = string
  sensitive   = true
}
