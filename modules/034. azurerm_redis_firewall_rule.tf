resource "azurerm_redis_firewall_rule" "example" {
  name                = "example-firewall-rule"
  resource_group_name = azurerm_resource_group.example.name
  redis_cache_name    = azurerm_redis_cache.example.name
  start_ip_address    = "10.0.0.0"
  end_ip_address      = "10.0.0.255"
}
