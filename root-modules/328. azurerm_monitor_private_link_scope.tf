resource "azurerm_monitor_private_link_scope" "example" {
  name                = "example-private-link-scope"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
}
