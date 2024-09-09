resource "azurerm_container_registry_webhook" "example" {
  name                = "example-webhook"
  registry_name       = azurerm_container_registry.example.name
  resource_group_name = azurerm_resource_group.example.name
  service_uri         = "https://example.com/webhook"
  actions             = ["push"]
}
