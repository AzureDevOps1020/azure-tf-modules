resource "azurerm_spring_cloud_service" "example" {
  name                = "example-spring-cloud-service"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Standard"
  tags = {
    environment = "production"
  }
}
