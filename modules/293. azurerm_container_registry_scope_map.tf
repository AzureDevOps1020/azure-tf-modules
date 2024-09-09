resource "azurerm_container_registry_scope_map" "example" {
  name                = "example-scope-map"
  resource_group_name = azurerm_resource_group.example.name
  registry_name       = azurerm_container_registry.example.name
  description         = "Scope map for container registry"
  actions             = ["*"]
}
