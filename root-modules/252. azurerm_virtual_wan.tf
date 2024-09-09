resource "azurerm_virtual_wan" "example" {
  name                = "example-virtual-wan"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Standard"
}
