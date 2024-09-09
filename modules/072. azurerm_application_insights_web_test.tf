resource "azurerm_application_insights_web_test" "example" {
  name                = "example-web-test"
  resource_group_name = azurerm_resource_group.example.name
  application_insights_name = azurerm_application_insights.example.name
  kind                = "ping"
  url                 = "https://example.com"
  frequency           = 5
  timeout             = 10
  enabled             = true
}
