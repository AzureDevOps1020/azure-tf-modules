resource "azurerm_digital_twins_instance" "example" {
  name                = "example-digital-twins-instance"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Standard"
}
