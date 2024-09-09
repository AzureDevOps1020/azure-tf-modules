resource "azurerm_cdn_endpoint" "example" {
  name                = "example-cdn-endpoint"
  resource_group_name = azurerm_resource_group.example.name
  profile_name        = azurerm_cdn_profile.example.name
  location            = azurerm_resource_group.example.location
  is_http_allowed     = true
  is_https_allowed    = true
  origin {
    name     = "example-origin"
    hostname = "example.com"
  }
}
