resource "azurerm_recovery_services_vault" "example" {
  name                = "example-recovery-services-vault"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Standard"
}
