resource "azurerm_monitor_action_group" "example" {
  name                = "example-action-group"
  resource_group_name = azurerm_resource_group.example.name
  short_name          = "exampleAG"
  email_receiver {
    name          = "example-email"
    email_address = "example@example.com"
  }
}
