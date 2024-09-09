resource "azurerm_private_dns_txt_record" "example" {
  name                = "example"
  zone_name           = azurerm_private_dns_zone.example.name
  resource_group_name = azurerm_resource_group.example.name
  ttl                 = 3600
  records             = ["v=spf1 include:example.com -all"]
}
