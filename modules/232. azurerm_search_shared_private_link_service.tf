resource "azurerm_search_shared_private_link_service" "example" {
  name                = "example-shared-private-link-service"
  resource_group_name = azurerm_resource_group.example.name
  search_service_name = azurerm_search_service.example.name
  private_link_service_connections {
    name          = "example-connection"
    private_link_service_connection {
      private_link_service_connection_name = "example-connection-name"
      is_manual_connection                 = true
      private_link_service_connection {
        connection_name = "example-private-link"
        description     = "Example description"
      }
    }
  }
}
