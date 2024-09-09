resource "azurerm_availability_set" "example" {
  name                = "example-avset"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Aligned"
  platform_update_domain_count = 5
  platform_fault_domain_count   = 2
}
