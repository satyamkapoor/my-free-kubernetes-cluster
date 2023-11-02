

module "oke" {
  source  = "oracle-terraform-modules/oke/oci"
  version = "5.0.0-beta.6"
  providers = {
    oci.home = oci
  }

  cluster_name                = var.cluster_name
  kubernetes_version          = var.kubernetes_version
  create_cluster              = true
  cluster_type                = "basic"
  cni_type                    = "flannel"
  pods_cidr                   = "10.244.0.0/16"
  services_cidr               = "10.96.0.0/16"
  compartment_ocid            = var.worker_compartment_ocid
  compartment_id              = var.compartment_ocid
  worker_compartment_id       = var.worker_compartment_ocid
  allow_pod_internet_access   = "true"
  control_plane_is_public     = true
  control_plane_allowed_cidrs = ["0.0.0.0/0"]
  worker_pool_mode            = "node-pool"
  worker_pools = {

    oke-vm = {
      size             = var.node_pool_size,
      shape            = var.node_type,
      ocpus            = 1,
      memory           = 4,
      boot_volume_size = 50,
      create           = true,
    }

  }
  create_operator = false
  create_bastion  = false


}

# data "oci_objectstorage_bucket" "test_bucket" {
#     #Required
#     name = "test"
#     namespace = "kapoor"
# }


resource "oci_core_network_security_group_security_rule" "allow_all" {
  provider                  = oci
  network_security_group_id = module.oke.control_plane_nsg_id
  description               = "Allow all traffic from all sources"
  direction                 = "INGRESS"
  protocol                  = "all"
  source                    = "0.0.0.0/0" # Allow traffic from all IP addresses
}