resource "azurerm_role_assignment" "example" {
  principal_id   = azurerm_user.example.id
  role_definition_name = "Contributor"
  scope          = azurerm_resource_group.example.id
}
