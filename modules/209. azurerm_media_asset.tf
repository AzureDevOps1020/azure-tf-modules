resource "azurerm_media_asset" "example" {
  name                = "example-media-asset"
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_media_services_account.example.name
  description         = "Example media asset"
}
