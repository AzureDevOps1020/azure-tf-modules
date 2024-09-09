resource "azurerm_cognitive_services_account" "example" {
  name                = "example-cognitive-services-account"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  kind                = "Face"
  sku                 = "S1"
}
