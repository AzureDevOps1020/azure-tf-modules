resource "azurerm_integration_service_environment" "example" {
  name                = "example-integration-service-environment"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "I1"
  frontend_ip_configuration {
    name = "example-frontend-ip"
    subnet_id = azurerm_subnet.example.id
  }
}
