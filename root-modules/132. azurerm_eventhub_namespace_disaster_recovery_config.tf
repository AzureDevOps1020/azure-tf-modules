resource "azurerm_eventhub_namespace_disaster_recovery_config" "example" {
  name                = "example-disaster-recovery"
  resource_group_name = azurerm_resource_group.example.name
  namespace_name      = azurerm_eventhub_namespace.example.name
  partner_namespace   = azurerm_eventhub_namespace.partner.name
}
