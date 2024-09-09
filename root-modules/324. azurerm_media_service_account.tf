resource "azurerm_media_service_account" "example" {
  name                = "example-media-service-account"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
}
