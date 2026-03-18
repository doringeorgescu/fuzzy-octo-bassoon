module "vm1" {
  source       = "./modules/compute"
  nume_instanta = "Instanta Ubuntu noua"
  subnetID = oci_core_subnet.subnet_pluto.id
  fingerprint = var.fingerprint
  private_key = var.private_key
}
