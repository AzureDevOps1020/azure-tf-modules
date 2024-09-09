resource "azurerm_dedicated_host" "example" {
  name                = "example-dedicated-host"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  host_group_id       = azurerm_dedicated_host_group.example.id
  platform_fault_domain = "0"
  sku                 = "DSv5-Type1"
}
