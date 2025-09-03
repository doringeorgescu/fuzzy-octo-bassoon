variable "fingerprint"{
description = "Fingerprint of the API key"
type        = string
sensitive   = true

}

variable "private_key_path" {
  type        = string
  description = "Path to your private API key file"
  sensitive   = true
}
