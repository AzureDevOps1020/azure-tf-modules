resource "azurerm_lb_rule" "example" {
  name                = "example-lb-rule"
  resource_group_name = azurerm_resource_group.example.name
  loadbalancer_id     = azurerm_lb.example.id
  frontend_ip_configuration_name = "example-frontend-ip"
  backend_address_pool_id       = azurerm_lb_backend_address_pool.example.id
  probe_id                    = azurerm_lb_probe.example.id
  protocol                   = "Tcp"
  frontend_port              = 80
  backend_port               = 80
}
