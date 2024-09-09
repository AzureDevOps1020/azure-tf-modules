resource "azurerm_cdn_profile" "example" {
  name                = "example-cdn-profile"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Standard_Microsoft"
}
