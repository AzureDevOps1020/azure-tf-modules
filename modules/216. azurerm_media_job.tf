resource "azurerm_media_job" "example" {
  name                = "example-media-job"
  resource_group_name = azurerm_resource_group.example.name
  account_name        = azurerm_media_services_account.example.name
  transform_name      = azurerm_media_transform.example.name
  input               = [{
    asset_name = azurerm_media_asset.example.name
  }]
  outputs             = [{
    asset_name = azurerm_media_asset.example.name
  }]
}
