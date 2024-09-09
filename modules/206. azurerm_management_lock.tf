resource "azurerm_management_lock" "example" {
  name               = "example-management-lock"
  scope             = azurerm_resource_group.example.id
  lock_level         = "CanNotDelete"
  notes              = "Lock for preventing deletion"
}
