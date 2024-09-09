resource "azurerm_lb_rule" "example" {
  name                = "example-lb-rule"
  resource_group_name = azurerm_resource_group.example.name
  loadbalancer_id     = azurerm_lb.example.id
  protocol            = "Tcp"
  frontend_port       = 80
  backend_port        = 80
  enable_floating_ip  = false
}
