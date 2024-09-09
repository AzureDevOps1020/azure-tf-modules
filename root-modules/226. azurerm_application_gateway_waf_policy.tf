resource "azurerm_application_gateway_waf_policy" "example" {
  name                = "example-waf-policy"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  custom_rules {
    name      = "example-rule"
    priority  = 1
    action    = "Block"
    match_conditions {
      match_variable = "RequestHeader"
      operator       = "Equal"
      values         = ["block"]
    }
  }
}
