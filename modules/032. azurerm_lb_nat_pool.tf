resource "azurerm_lb_nat_pool" "example" {
  name                = "example-nat-pool"
  resource_group_name = azurerm_resource_group.example.name
  loadbalancer_id     = azurerm_lb.example.id
  frontend_ip_configuration_name = "example-frontend"
  protocol            = "Tcp"
  frontend_port_range_start = 50000
  frontend_port_range_end   = 50050
  backend_port        = 3389
}
