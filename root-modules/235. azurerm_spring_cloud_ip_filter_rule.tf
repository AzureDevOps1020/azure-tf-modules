resource "azurerm_spring_cloud_ip_filter_rule" "example" {
  name                = "example-ip-filter-rule"
  resource_group_name = azurerm_resource_group.example.name
  spring_cloud_name   = azurerm_spring_cloud_service.example.name
  ip_address          = "0.0.0.0/0"
  action              = "Allow"
}
