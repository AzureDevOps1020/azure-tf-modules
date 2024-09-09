resource "azurerm_nat_gateway" "example" {
  name                = "example-nat-gateway"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Standard"
  public_ip_address_ids = [azurerm_public_ip.example.id]
}
