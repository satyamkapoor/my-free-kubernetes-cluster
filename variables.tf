variable "compartment_ocid" {
  type        = string
  description = "The compartment to create the resources in"
  default = "ocid1.tenancy.oc1..aaaaaaaaicup6lrjqkanejhekedpuy2s4zl5r5jrw67sj6dk37q3ahvxo4ia"
}

variable "region" {
  type        = string
  description = "The region to provision the resources in"
}


variable "worker_compartment_ocid" {
  type = string
  default = "ocid1.tenancy.oc1..aaaaaaaaicup6lrjqkanejhekedpuy2s4zl5r5jrw67sj6dk37q3ahvxo4ia"
}

variable "private_key_path" {
    type = string
  
}

variable "fingerprint" {
  type = string
}

variable "user_ocid" {
  type = string
}

variable "tenancy_ocid" {
  type = string
}

variable "namespace" {
  type = string
}
