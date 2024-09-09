resource "azurerm_bastion_host" "example" {
  name                = "example-bastion-host"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Basic"
  ip_configuration {
    name                 = "example-ip-config"
    subnet_id             = azurerm_subnet.example.id
    public_ip_address_id  = azurerm_public_ip.example.id
  }
}
