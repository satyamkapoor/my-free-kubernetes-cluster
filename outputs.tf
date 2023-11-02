output "cluster_kubeconfig" {
  value = templatefile("${path.module}/oci_kubeconfig_template.tpl", {
    cluster_id = module.oke.cluster_id
  })
}
