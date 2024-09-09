resource "azurerm_cognitive_account" "example" {
  name                = "example-cognitive-account"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  kind                = "General"
  sku                 = "S1"
}
