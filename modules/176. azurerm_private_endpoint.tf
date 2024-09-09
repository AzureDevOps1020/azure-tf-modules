resource "azurerm_private_endpoint" "example" {
  name                = "example-private-endpoint"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  private_service_connection {
    name                           = "example-private-service-connection"
    private_connection_resource_id = azurerm_storage_account.example.id
    is_manual_connection           = false
    subresource_names              = ["blob"]
  }
}
