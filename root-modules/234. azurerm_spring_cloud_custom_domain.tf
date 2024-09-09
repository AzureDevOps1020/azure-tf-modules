resource "azurerm_spring_cloud_custom_domain" "example" {
  name                = "example-custom-domain"
  resource_group_name = azurerm_resource_group.example.name
  spring_cloud_name   = azurerm_spring_cloud_service.example.name
  custom_domain       = "example.customdomain.com"
}
