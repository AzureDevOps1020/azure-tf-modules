resource "azurerm_network_connection_monitor" "example" {
  name                = "example-connection-monitor"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  test_frequency      = "PT5M"
  endpoints {
    name         = "source-endpoint"
    resource_id  = azurerm_network_interface.example.id
    port         = 80
  }
  destinations {
    name         = "destination-endpoint"
    resource_id  = azurerm_public_ip.example.id
    port         = 80
  }
}
