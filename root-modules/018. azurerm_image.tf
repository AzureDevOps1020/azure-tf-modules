resource "azurerm_image" "example" {
  name                = "example-image"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  storage_account_type = "Standard_LRS"
  source_virtual_machine_id = azurerm_virtual_machine.example.id
  os_disk {
    os_type  = "Linux"
    snapshot_id = azurerm_snapshot.example.id
  }
  tags = {
    environment = "production"
  }
}
