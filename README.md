<!-- BEGIN_TF_DOCS -->

### My Free Kubernetes Cluster

This repository is utilising always free resource of oracle cloud to create an OKE (Oracle Kubernetes Engine) k8s cluster. As OKE basic is of no charge at the moment, but doesn't comes under always free resources, you need to put up a credit card to create the resource. It's best to put an upper budget limit of $10 to avoid any charges.

At the end, you'll have a kubernetes cluster with 4 nodes of type VM.Standard.A1.Flex (ARM) with each have 2 OCPU and 6 GB of memory, with 50 GB of disk.



### Quickstart
- Create a .env file to source in your terminal. `mv .env.example .env`
- Fill the values in `.env` file
- Source the file `source .env`
- Initialise terraform and apply. `terraform init && terraform apply`
- Execute the command which comes as the output `oci ce cluster create-kubeconfig --cluster-id your-cluster-id --file $HOME/.kube/config --region eu-frankfurt-1 --token-version 2.0.0  --kube-endpoint PUBLIC_ENDPOINT`



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | Kubernetes cluster name | `string` | `"my_free_k8s"` | no |
| <a name="input_compartment_ocid"></a> [compartment\_ocid](#input\_compartment\_ocid) | The compartment id to create the resources in. Check compartment ID. | `string` | n/a | yes |
| <a name="input_fingerprint"></a> [fingerprint](#input\_fingerprint) | Fingerprint of the private key | `string` | n/a | yes |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | Version of your k8s cluster | `string` | `"v1.27.2"` | no |
| <a name="input_node_boot_volume_size"></a> [node\_boot\_volume\_size](#input\_node\_boot\_volume\_size) | Node boot volume for each node in the node pool in Gb. | `number` | `50` | no |
| <a name="input_node_memory"></a> [node\_memory](#input\_node\_memory) | Node memory in Gb for a node in the node pool. | `number` | `6` | no |
| <a name="input_node_ocpu"></a> [node\_ocpu](#input\_node\_ocpu) | CPU unit of a node in the node pool. | `number` | `2` | no |
| <a name="input_node_pool_size"></a> [node\_pool\_size](#input\_node\_pool\_size) | Node pool size. Currently hardcoded, perhaps later we use an autoscaler or something. | `number` | `4` | no |
| <a name="input_node_type"></a> [node\_type](#input\_node\_type) | K8s cluster node type. VM.Standard.A1.Flex is the one in always free resources with ARM variant | `string` | `"VM.Standard.A1.Flex"` | no |
| <a name="input_private_key_path"></a> [private\_key\_path](#input\_private\_key\_path) | Path to your private key used to authenticate or oci. Check https://docs.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm#two | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region to provision the resources in. Mostly the same as the one you selected while creating your account. | `string` | n/a | yes |
| <a name="input_tenancy_ocid"></a> [tenancy\_ocid](#input\_tenancy\_ocid) | Your tenancy OCID https://docs.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm#five | `string` | n/a | yes |
| <a name="input_user_ocid"></a> [user\_ocid](#input\_user\_ocid) | Your user OCID. https://docs.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm#five | `string` | n/a | yes |
| <a name="input_worker_compartment_ocid"></a> [worker\_compartment\_ocid](#input\_worker\_compartment\_ocid) | The compartment id to create the resources in. Check compartment ID. | `string` | n/a | yes |
## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_oke"></a> [oke](#module\_oke) | oracle-terraform-modules/oke/oci | 5.0.0-beta.6 |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_kubeconfig"></a> [cluster\_kubeconfig](#output\_cluster\_kubeconfig) | n/a |
## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 5.16.0 |
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 5.16.0 |
## Resources

| Name | Type |
|------|------|
| [oci_core_network_security_group_security_rule.allow_all](https://registry.terraform.io/providers/oracle/oci/5.16.0/docs/resources/core_network_security_group_security_rule) | resource |
<!-- END_TF_DOCS -->