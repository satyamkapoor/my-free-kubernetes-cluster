output "cluster_kubeconfig" {
  value = templatefile("${path.module}/oci_kubeconfig_template.tftpl", {
    cluster_id = module.oke.cluster_id,
    region = module.oke.region
  })
}
