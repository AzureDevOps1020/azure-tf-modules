resource "azurerm_dns_cname_record" "example" {
  name                = "app"
  zone_name           = azurerm_dns_zone.example.name
  resource_group_name = azurerm_resource_group.example.name
  ttl                 = 3600
  record              = "example.com"
}
