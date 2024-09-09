resource "azurerm_managed_application" "example" {
  name                = "example-managed-application"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  managed_application {
    name = "example-application"
    description = "Example managed application"
  }
}
