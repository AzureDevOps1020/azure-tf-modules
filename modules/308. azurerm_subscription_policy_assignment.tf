resource "azurerm_subscription_policy_assignment" "example" {
  name                 = "example-subscription-policy-assignment"
  policy_definition_name = azurerm_policy_definition.example.name
  scope                = azurerm_subscription.example.id
}
