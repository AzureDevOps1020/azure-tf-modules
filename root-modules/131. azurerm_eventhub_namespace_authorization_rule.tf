resource "azurerm_eventhub_namespace_authorization_rule" "example" {
  name                = "example-auth-rule"
  namespace_name      = azurerm_eventhub_namespace.example.name
  resource_group_name = azurerm_resource_group.example.name
  rights              = ["Listen", "Send"]
}
