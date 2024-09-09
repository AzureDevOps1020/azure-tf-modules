resource "azurerm_policy_definition" "example" {
  name         = "example-policy-definition"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Example Policy Definition"
  policy_rule  = jsonencode({
    "if": {
      "field": "location",
      "equals": "westeurope"
    },
    "then": {
      "effect": "deny"
    }
  })
}
