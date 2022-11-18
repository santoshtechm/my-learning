#Data from terraform variable file
variable "tenancy_ocid" {}
variable "compartment_ocid" {}
variable "ssh_public_key" {}
variable "user_ocid" {}
variable "fingerprint" {}
variable "private_key" {}

#Choose an availability domain
variable "region" {
  default = "me-jeddah-1"
}

variable "AD" {
  default = "1"
}

#VCN Variables
variable "vcn_dicr" {
  default = "10.0.0.0/16"
}

variable "vcn_dns_label" {
  description = "VCN DNS Label"
  default     = "vcn01"
}

#OS Image
variable "image_operating_system" {
  default = "Oracle Linux"
}

variable "image_operating_system_version" {
  default = "8"
}

#Compute shape
variable "instance_shape" {
  description = "Instance Shape"
  default     = "VM.Standard.E4.Flex"
}

#Load balancer shape
variable "load_balancer_min_band" {
  description = "Load balancer min band"
  default     = "10"
}

variable "load_balancer_max_band" {
  description = "Load balancer max band"
  default     = "10"
}
