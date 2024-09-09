resource "azurerm_media_services_account" "example" {
  name                = "example-media-services-account"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Standard"
}
