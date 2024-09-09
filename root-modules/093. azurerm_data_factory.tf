resource "azurerm_data_factory" "example" {
  name                = "example-data-factory"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "DF"
}
