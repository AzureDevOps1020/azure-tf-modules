resource "azurerm_policy_set_definition" "example" {
  name         = "example-policy-set"
  policy_type  = "Custom"
  display_name = "Example Policy Set"
  policy_definitions {
    policy_definition_id = azurerm_policy_definition.example.id
  }
}
