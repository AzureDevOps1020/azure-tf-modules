resource "azurerm_api_management_api" "example" {
  name                = "example-api"
  resource_group_name = azurerm_resource_group.example.name
  api_management_name = azurerm_api_management.example.name
  revision            = "1"
  display_name        = "Example API"
  path                = "example-api"
  protocols           = ["https"]
  import {
    content_format = "swagger-link-json"
    content_value  = "https://example.com/api/swagger.json"
  }
}
