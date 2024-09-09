resource "azurerm_managed_identity_user_assigned_identity" "example" {
  name                = "example-user-assigned-identity"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}
