resource "azurerm_role_definition" "example" {
  name        = "example-role"
  scope       = azurerm_subscription.example.id
  description = "Custom role definition"
  permissions {
    actions   = ["*"]
    not_actions = []
  }
}
