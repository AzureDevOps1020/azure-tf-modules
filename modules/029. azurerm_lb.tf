resource "azurerm_lb" "example" {
  name                = "example-lb"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Basic"
  frontend_ip_configuration {
    name                 = "example-frontend"
    public_ip_address_id = azurerm_public_ip.example.id
  }
  backend_address_pool {
    name = "example-backend-pool"
  }
  probe {
    name                = "example-probe"
    port                = 80
    protocol            = "Tcp"
    interval_in_seconds = 15
    number_of_probes    = 2
  }
}
