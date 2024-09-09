resource "azurerm_private_link_service" "example" {
  name                = "example-private-link-service"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  subnet_id           = azurerm_subnet.example.id
  private_ip_address  = "10.0.0.4"
  private_ip_address_allocation = "Static"
  ip_configuration {
    name                          = "example-ip-config"
    private_ip_address            = "10.0.0.4"
    private_ip_address_allocation = "Static"
  }
}
