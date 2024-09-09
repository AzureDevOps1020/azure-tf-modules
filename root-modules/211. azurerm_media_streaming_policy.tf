resource "azurerm_media_streaming_policy" "example" {
  name                = "example-streaming-policy"
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_media_services_account.example.name
  description         = "Example streaming policy"
  policies            = jsonencode({
    "Policies" = {
      "Streaming" = {
        "Protocols" = ["HLS"]
      }
    }
  })
}
