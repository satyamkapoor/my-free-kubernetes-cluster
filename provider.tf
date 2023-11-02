terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
      version = "5.16.0"
    }
  }
}

provider "oci" {
  tenancy_ocid = var.tenancy_ocid
  user_ocid = var.user_ocid
  private_key_path = pathexpand(var.private_key_path)
  fingerprint = var.fingerprint
  region = var.region
}
