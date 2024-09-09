resource "azurerm_policy_assignment" "example" {
  name                 = "example-policy-assignment"
  scope                = azurerm_resource_group.example.id
  policy_definition_name = azurerm_policy_definition.example.name
}
