resource "azurerm_logic_app_workflow" "example" {
  name                = "example-logic-app-workflow"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  definition          = jsonencode({
    "$schema" = "https://schema.management.azure.com/2016-06-01/workflowdefinition.json"
    "actions" = {
      "HttpAction" = {
        "inputs" = {
          "method" = "GET"
          "uri"    = "https://example.com"
        }
        "runAfter" = {}
        "metadata" = {}
        "type"     = "Http"
      }
    }
    "connectors" = {}
    "description" = "Example Logic App Workflow"
    "outputs"    = {}
    "triggers"   = {
      "HttpTrigger" = {
        "metadata" = {}
        "type"     = "Http"
      }
    }
  })
  tags = {
    environment = "testing"
  }
}
