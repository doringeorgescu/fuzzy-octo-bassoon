module "vm1" {
  source       = "./modules/compute"
  nume_instanta = "Instanta Plutoshica"
  subnetID = oci_core_subnet.subnet_pluto.id
  fingerprint = var.fingerprint
  # private_key_path = var.private_key_path
  private_key = var.private_key
}
