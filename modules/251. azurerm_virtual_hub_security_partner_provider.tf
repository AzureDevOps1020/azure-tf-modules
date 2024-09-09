resource "azurerm_virtual_hub_security_partner_provider" "example" {
  name                = "example-security-partner-provider"
  resource_group_name = azurerm_resource_group.example.name
  virtual_hub_id      = azurerm_virtual_hub.example.id
  provider            = "AzureFirewall"
}
