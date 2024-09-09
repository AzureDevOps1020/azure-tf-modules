resource "azurerm_media_live_output" "example" {
  name                = "example-live-output"
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_media_services_account.example.name
  live_event_name     = azurerm_media_live_event.example.name
  asset_name          = azurerm_media_asset.example.name
  streaming_locator_name = azurerm_media_streaming_locator.example.name
}
