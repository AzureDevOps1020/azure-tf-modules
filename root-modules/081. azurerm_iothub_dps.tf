resource "azurerm_iothub_dps" "example" {
  name                = "example-iothub-dps"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "S1"
  tags = {
    environment = "production"
  }
}
