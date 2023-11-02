variable "compartment_ocid" {
  type        = string
  description = "The compartment id to create the resources in. Check compartment ID."
}

variable "region" {
  type        = string
  description = "The region to provision the resources in. Mostly the same as the one you selected while creating your account."
}


variable "worker_compartment_ocid" {
  type        = string
  description = "The compartment id to create the resources in. Check compartment ID."
}

variable "private_key_path" {
  type        = string
  description = "Path to your private key used to authenticate or oci. Check https://docs.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm#two"

}

variable "fingerprint" {
  type        = string
  description = "Fingerprint of the private key"
}

variable "user_ocid" {
  type        = string
  description = "Your user OCID. https://docs.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm#five"
}

variable "tenancy_ocid" {
  type        = string
  description = "Your tenancy OCID https://docs.oracle.com/en-us/iaas/Content/API/Concepts/apisigningkey.htm#five"
}


variable "kubernetes_version" {
  type        = string
  default     = "v1.27.2"
  description = "Version of your k8s cluster"
}

variable "cluster_name" {
  type        = string
  default     = "my_free_k8s"
  description = "Kubernetes cluster name"
}

variable "node_type" {
  type        = string
  default     = "VM.Standard.A1.Flex"
  description = "K8s cluster node type. VM.Standard.A1.Flex is the one in always free resources with ARM variant"

}

variable "node_pool_size" {
  type        = number
  default     = 3
  description = "Node pool size. Currently hardcoded, perhaps later we use an autoscaler or something."

}

variable "node_ocpu" {
  type        = number
  default     = 1
  description = "CPU unit of a node in the node pool."

}

variable "node_memory" {
  type        = number
  default     = 4
  description = "Node memory in Gb for a node in the node pool."
}

variable "node_boot_volume_size" {
  type        = number
  default     = 50
  description = "Node boot volume for each node in the node pool in Gb."

}