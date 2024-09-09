resource "azurerm_lb_backend_address_pool" "example" {
  name                = "example-backend-pool"
  resource_group_name = azurerm_resource_group.example.name
  loadbalancer_id     = azurerm_lb.example.id
}
