resource "azurerm_spring_cloud_active_deployment" "example" {
  name                = "example-active-deployment"
  resource_group_name = azurerm_resource_group.example.name
  spring_cloud_name   = azurerm_spring_cloud_service.example.name
  app_name            = azurerm_spring_cloud_app.example.name
  deployment_name     = "example-deployment"
}
