resource "azurerm_frontdoor" "example" {
  name                = "example-frontdoor"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  friendly_name       = "Example Frontdoor"
}
