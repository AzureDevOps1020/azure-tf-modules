resource "azurerm_private_dns_cname_record" "example" {
  name                = "example"
  zone_name           = azurerm_private_dns_zone.example.name
  resource_group_name = azurerm_resource_group.example.name
  ttl                 = 3600
  record              = "example.otherdomain.com"
}
