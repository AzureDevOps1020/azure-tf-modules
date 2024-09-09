resource "azurerm_media_streaming_endpoint" "example" {
  name                = "example-streaming-endpoint"
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_media_services_account.example.name
  location            = azurerm_resource_group.example.location
  description         = "Example streaming endpoint"
  scale_units         = 1
}
