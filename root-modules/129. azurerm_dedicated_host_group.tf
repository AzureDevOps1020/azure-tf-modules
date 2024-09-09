resource "azurerm_dedicated_host_group" "example" {
  name                = "example-dedicated-host-group"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  platform_fault_domain_count = 2
}
