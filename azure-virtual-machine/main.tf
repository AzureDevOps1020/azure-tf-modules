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
  source              = "../modules/azurerm_resource_group" # Update this path if needed
  resource_group_name = var.resource_group_name
  location            = var.location
}

# Calling the Virtual Network Module
module "virtual_network" {
  source                = "modules/azurerm_virtual_network" # Update this path if needed
  vnet_name             = var.vnet_name
  address_space         = var.address_space
  location              = var.location
  resource_group_name   = module.resource_group.resource_group_name
}

# Calling the Subnet Module
module "subnet" {
  source                = "modules/azurerm_subnet" # Update this path if needed
  subnet_name           = var.subnet_name
  address_prefixes      = var.address_prefixes
  virtual_network_name  = module.virtual_network.vnet_name
  resource_group_name   = module.resource_group.resource_group_name
}

# Calling the Network Security Group Module
module "network_security_group" {
  source                = "modules/azurerm_network_security_group" # Update this path if needed
  nsg_name              = var.nsg_name
  location              = var.location
  resource_group_name   = module.resource_group.resource_group_name
}

# Calling the Virtual Machine Module
module "virtual_machine" {
  source               = "modules/azure_virtual_machine" # Update this path if needed
  vm_name              = var.vm_name
  resource_group_name  = module.resource_group.resource_group_name
  location             = var.location
  network_interface_id = module.network_interface.network_interface_id
  admin_username       = "adminuser"
  admin_password       = random_password.admin_password.result
  storage_image_publisher = var.storage_image_publisher
  storage_image_offer     = var.storage_image_offer
  storage_image_sku       = var.storage_image_sku
  storage_image_version   = var.storage_image_version
  os_disk_name            = var.os_disk_name
  size                    = var.vm_size
}

# Output for admin password
output "admin_password" {
  value     = random_password.admin_password.result
  sensitive = true
}
