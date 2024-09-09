resource "azurerm_container_registry_token" "example" {
  name                = "example-token"
  resource_group_name = azurerm_resource_group.example.name
  registry_name       = azurerm_container_registry.example.name
  scope_map_ids        = [azurerm_container_registry_scope_map.example.id]
}
