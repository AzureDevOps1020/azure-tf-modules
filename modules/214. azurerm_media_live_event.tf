resource "azurerm_media_live_event" "example" {
  name                = "example-live-event"
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_media_services_account.example.name
  description         = "Example live event"
  input             = {
    streaming_locator_name = azurerm_media_streaming_locator.example.name
  }
  preview           = {
    streaming_locator_name = azurerm_media_streaming_locator.example.name
  }
}
