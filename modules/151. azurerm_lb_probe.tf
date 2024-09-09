resource "azurerm_lb_probe" "example" {
  name                = "example-lb-probe"
  resource_group_name = azurerm_resource_group.example.name
  loadbalancer_id     = azurerm_lb.example.id
  protocol            = "Http"
  port                = 80
  request_path        = "/health"
  interval_in_seconds = 15
  number_of_probes    = 2
}
