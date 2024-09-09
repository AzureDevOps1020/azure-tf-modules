resource "azurerm_traffic_manager_profile" "example" {
  name                = "example-traffic-manager-profile"
  resource_group_name = azurerm_resource_group.example.name
  location            = "global"
  profile_status      = "Enabled"
  traffic_routing_method = "Performance"
  dns_config {
    relative_name = "example"
    ttl           = 60
  }
}
