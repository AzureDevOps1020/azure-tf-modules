variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "location" {
  description = "Azure Region"
  default     = "East US"
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
}

variable "os_disk" {
  description = "Operating system disk settings"
  type        = object({
    caching              = string
    storage_account_type = string
  })
}

variable "image_reference" {
  description = "Image reference for VM"
  type = object({
    publisher = string
    offer     = string
    sku       = string
    version   = string
  })
}
