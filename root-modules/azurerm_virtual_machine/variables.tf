variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the virtual machine should be created."
  type        = string
}

variable "location" {
  description = "The location where the virtual machine should be created."
  type        = string
}

variable "vm_size" {
  description = "The size of the virtual machine."
  type        = string
}

variable "network_interface_ids" {
  description = "The IDs of the network interfaces attached to the virtual machine."
  type        = list(string)
}

variable "image_publisher" {
  description = "The publisher of the image used to create the virtual machine."
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "The offer of the image used to create the virtual machine."
  type        = string
  default     = "UbuntuServer"
}

variable "image_sku" {
  description = "The SKU of the image used to create the virtual machine."
  type        = string
  default     = "18.04-LTS"
}

variable "image_version" {
  description = "The version of the image used to create the virtual machine."
  type        = string
  default     = "latest"
}

variable "os_disk_name" {
  description = "The name of the OS disk."
  type        = string
}

variable "os_disk_caching" {
  description = "The caching option for the OS disk."
  type        = string
  default     = "ReadWrite"
}

variable "os_disk_create_option" {
  description = "The create option for the OS disk."
  type        = string
  default     = "FromImage"
}

variable "os_disk_storage_account_type" {
  description = "The storage account type for the OS disk."
  type        = string
  default     = "Standard_LRS"
}

variable "os_profile_computer_name" {
  description = "The computer name of the virtual machine."
  type        = string
}

variable "os_profile_admin_username" {
  description = "The admin username for the virtual machine."
  type        = string
}

variable "os_profile_admin_password" {
  description = "The admin password for the virtual machine."
  type        = string
}

variable "disable_password_authentication" {
  description = "Whether to disable password authentication for the virtual machine."
  type        = bool
  default     = false
}
