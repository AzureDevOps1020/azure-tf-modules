resource "azurerm_iothub" "example" {
  name                = "example-iothub"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "S1"
  units               = 1
  capacity            = 1
}
