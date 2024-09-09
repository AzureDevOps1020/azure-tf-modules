variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which the subnet exists."
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network where the subnet is located."
  type        = string
}

variable "address_prefixes" {
  description = "The address prefixes associated with the subnet."
  type        = list(string)
}
