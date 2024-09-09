resource "azurerm_private_dns_ptr_record" "example" {
  name                = "10.0.0.4.in-addr.arpa"
  zone_name           = azurerm_private_dns_zone.example.name
  resource_group_name = azurerm_resource_group.example.name
  ttl                 = 3600
  record              = "example.example.com"
}
