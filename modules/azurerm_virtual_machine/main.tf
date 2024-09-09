resource "azurerm_virtual_machine" "example" {
  name                  = var.vm_name
  resource_group_name   = var.resource_group_name
  location              = var.location
  size                  = var.vm_size
  network_interface_ids = var.network_interface_ids

  storage_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }

  storage_os_disk {
    name              = var.os_disk_name
    caching           = var.os_disk_caching
    create_option     = var.os_disk_create_option
    managed_disk {
      storage_account_type = var.os_disk_storage_account_type
    }
  }

  os_profile {
    computer_name  = var.os_profile_computer_name
    admin_username = var.os_profile_admin_username
    admin_password = var.os_profile_admin_password
  }

  os_profile_linux_config {
    disable_password_authentication = var.disable_password_authentication
  }
}
