resource "azurerm_management_group" "example" {
  name        = "example-management-group"
  display_name = "Example Management Group"
  parent_management_group_id = "/"
}
