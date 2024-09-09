resource "azurerm_lb_nat_rule" "example" {
  name                = "example-lb-nat-rule"
  resource_group_name = azurerm_resource_group.example.name
  loadbalancer_id     = azurerm_lb.example.id
  protocol            = "Tcp"
  frontend_port       = 80
  backend_port        = 80
  frontend_ip_configuration_name = azurerm_lb_frontend_ip_configuration.example.name
  idle_timeout_in_minutes = 4
}
