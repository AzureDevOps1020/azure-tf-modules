resource "azurerm_role_assignment" "example" {
  principal_id   = azurerm_service_principal.example.id
  role_definition_name = "Contributor"
  scope          = azurerm_resource_group.example.id
}
