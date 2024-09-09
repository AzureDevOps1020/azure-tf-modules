resource "azurerm_api_management" "example" {
  name                = "example-apim"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  publisher_name      = "example-publisher"
  publisher_email     = "publisher@example.com"
  sku_name            = "Developer_1"
  notification_sender_email = "notifications@example.com"
}
