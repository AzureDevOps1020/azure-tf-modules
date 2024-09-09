provider "azurerm" {
  features {}
}

# Generate a random password dynamically
resource "random_password" "admin_password" {
  length           = 16
  special          = true
  upper            = true
  lower            = true
  number           = true
}

# Calling the Resource Group Module
module "resource_group" {
  source              = "./modules/resource_group" # Assuming resource group module is located here
  resource_group_name = var.resource_group_name
  location            = var.location
}

# Calling the Network Module
module "network" {
  source              = "./modules/network" # Assuming network module is located here
  resource_group_name = module.resource_group.resource_group_name
  location            = var.location
  vnet_name           = var.vnet_name
  subnet_name         = var.subnet_name
}

# Calling the Virtual Machine Module
module "virtual_machine" {
  source               = "./modules/virtual_machine" # Assuming VM module is located here
  vm_name              = var.vm_name
  resource_group_name  = module.resource_group.resource_group_name
  location             = var.location
  admin_username       = "adminuser"
  admin_password       = random_password.admin_password.result
  network_interface_id = module.network.network_interface_id
  os_disk              = var.os_disk
  image_reference      = var.image_reference
}

# Output for admin password
output "admin_password" {
  value     = random_password.admin_password.result
  sensitive = true
}
