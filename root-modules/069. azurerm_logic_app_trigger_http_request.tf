resource "azurerm_logic_app_trigger_http_request" "example" {
  name                = "example-http-trigger"
  logic_app_name      = azurerm_logic_app_workflow.example.name
  resource_group_name = azurerm_resource_group.example.name
  schema              = jsonencode({
    "$schema" = "http://json-schema.org/draft-04/schema#"
    "type"    = "object"
    "properties" = {
      "message" = {
        "type" = "string"
      }
    }
  })
}
