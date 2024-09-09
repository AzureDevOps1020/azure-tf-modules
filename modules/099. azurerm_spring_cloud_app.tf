resource "azurerm_spring_cloud_app" "example" {
  name                = "example-spring-cloud-app"
  resource_group_name = azurerm_resource_group.example.name
  spring_cloud_service_name = azurerm_spring_cloud_service.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Standard"
  tags = {
    environment = "production"
  }
}
