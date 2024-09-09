resource "azurerm_logic_app_action_http" "example" {
  name                = "example-http-action"
  logic_app_name      = azurerm_logic_app_workflow.example.name
  resource_group_name = azurerm_resource_group.example.name
  action_name         = "HttpAction"
  method              = "POST"
  uri                 = "https://example.com"
  headers             = {
    "Content-Type" = "application/json"
  }
  body                = jsonencode({
    "message" = "Hello, World!"
  })
}
