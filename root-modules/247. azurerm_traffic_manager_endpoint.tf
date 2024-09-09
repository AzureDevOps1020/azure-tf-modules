resource "azurerm_traffic_manager_endpoint" "example" {
  name                = "example-traffic-manager-endpoint"
  resource_group_name = azurerm_resource_group.example.name
  profile_name        = azurerm_traffic_manager_profile.example.name
  type                = "azureEndpoints"
  target_resource_id  = azurerm_app_service.example.id
}
