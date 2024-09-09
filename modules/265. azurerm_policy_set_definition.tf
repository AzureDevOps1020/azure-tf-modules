resource "azurerm_policy_set_definition" "example" {
  name         = "example-policy-set-definition"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Example Policy Set"
  policies     = [
    azurerm_policy_definition.example.id
  ]
}
