variable "nsg_name" {
  description = "The name of the network security group."
  type        = string
}

variable "location" {
  description = "The Azure region where the network security group should exist."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the network security group exists."
  type        = string
}
