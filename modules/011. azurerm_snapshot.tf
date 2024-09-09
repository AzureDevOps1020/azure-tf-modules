resource "azurerm_snapshot" "example" {
  name                 = "example-snapshot"
  resource_group_name  = azurerm_resource_group.example.name
  location             = azurerm_resource_group.example.location
  disk_size_gb         = 64
  creation_data {
    create_option = "Copy"
    source_uri    = azurerm_managed_disk.example.id
  }
}