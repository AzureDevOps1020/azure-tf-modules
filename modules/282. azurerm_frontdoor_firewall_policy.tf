resource "azurerm_frontdoor_firewall_policy" "example" {
  name                = "example-firewall-policy"
  resource_group_name = azurerm_resource_group.example.name
  location            = "global"
  custom_rules {
    name    = "example-custom-rule"
    action  = "Allow"
    priority = 1
    rule {
      name = "example-rule"
      match_condition {
        match_variable = "RemoteAddr"
        operator       = "IPMatch"
        values         = ["0.0.0.0/0"]
      }
    }
  }
}
