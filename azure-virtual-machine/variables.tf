variable "location" {
  description = "The Azure region where the resources will be deployed."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
}

variable "nsg_name" {
  description = "The name of the network security group."
  type        = string
}

variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
}

variable "admin_password" {
  description = "The admin password for the virtual machine."
  type        = string
  sensitive   = true
}

variable "storage_image_publisher" {
  description = "The publisher of the image used for the virtual machine."
  type        = string
}

variable "storage_image_offer" {
  description = "The offer of the image used for the virtual machine."
  type        = string
}

variable "storage_image_sku" {
  description = "The SKU of the image used for the virtual machine."
  type        = string
}

variable "storage_image_version" {
  description = "The version of the image used for the virtual machine."
  type        = string
}

variable "os_disk_name" {
  description = "The name of the OS disk."
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
}
