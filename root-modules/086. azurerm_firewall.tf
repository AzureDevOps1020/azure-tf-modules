resource "azurerm_firewall" "example" {
  name                = "example-firewall"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "AZFW_VNet"
  tier                = "Standard"
  ip_configuration {
    name                 = "configuration"
    subnet_id             = azurerm_subnet.example.id
    public_ip_address_id  = azurerm_public_ip.example.id
  }
}
