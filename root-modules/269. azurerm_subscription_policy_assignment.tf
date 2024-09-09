resource "azurerm_subscription_policy_assignment" "example" {
  name                 = "example-policy-assignment"
  subscription_id      = "your-subscription-id"
  policy_definition_id = azurerm_policy_definition.example.id
}
