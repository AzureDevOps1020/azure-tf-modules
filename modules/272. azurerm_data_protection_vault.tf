resource "azurerm_data_protection_vault" "example" {
  name                = "example-data-protection-vault"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Standard"
}
