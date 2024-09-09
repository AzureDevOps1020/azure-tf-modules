resource "azurerm_role_definition" "example" {
  name        = "example-role-definition"
  scope       = azurerm_resource_group.example.id
  description = "Example role definition"
  permissions {
    actions     = ["*"]
    not_actions = []
  }
}
