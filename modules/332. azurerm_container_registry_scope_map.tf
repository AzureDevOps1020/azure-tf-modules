resource "azurerm_container_registry_scope_map" "example" {
  name                = "example-scope-map"
  registry_name       = azurerm_container_registry.example.name
  resource_group_name = azurerm_resource_group.example.name
  actions             = ["*"]
}
