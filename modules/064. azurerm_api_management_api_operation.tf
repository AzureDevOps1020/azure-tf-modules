resource "azurerm_api_management_api_operation" "example" {
  name                = "example-operation"
  api_name            = azurerm_api_management_api.example.name
  operation_id        = "example-operation-id"
  api_management_name = azurerm_api_management.example.name
  resource_group_name = azurerm_resource_group.example.name
  display_name        = "Example Operation"
  method              = "GET"
  url_template        = "/example"
  response {
    status = 200
    description = "Successful Response"
  }
}
