resource "azurerm_frontdoor_firewall_policy" "example" {
  name                = "example-frontdoor-firewall-policy"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  rules {
    name    = "example-rule"
    action  = "Allow"
    match_conditions {
      match_variable = "RemoteAddr"
      operator       = "IPMatch"
      values         = ["*"]
    }
  }
}
