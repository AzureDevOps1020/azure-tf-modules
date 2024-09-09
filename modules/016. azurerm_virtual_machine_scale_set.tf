resource "azurerm_virtual_machine_scale_set" "example" {
  name                = "example-vmss"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  upgrade_policy {
    mode = "Manual"
  }
  sku {
    name     = "Standard_DS1_v2"
    capacity = 2
  }
  storage_profile_os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    create_option        = "FromImage"
  }
  storage_profile_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
  network_profile {
    name    = "example-network-profile"
    primary = true
    network_interface {
      name    = "example-network-interface"
      primary = true
      enable_accelerated_networking = true
      ip_configuration {
        name      = "example-ip-configuration"
        primary   = true
        subnet_id = azurerm_subnet.example.id
      }
    }
  }
  os_profile {
    computer_name_prefix = "example"
    admin_username       = "adminuser"
    admin_password       = "Password1234!"
  }
}
