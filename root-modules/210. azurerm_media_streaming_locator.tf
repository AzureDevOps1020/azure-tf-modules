resource "azurerm_media_streaming_locator" "example" {
  name                = "example-streaming-locator"
  asset_name          = azurerm_media_asset.example.name
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_media_services_account.example.name
  streaming_policy_name = "Predefined_ClearStreamingOnly"
}
