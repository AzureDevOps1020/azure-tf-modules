resource "azurerm_private_dns_srv_record" "example" {
  name                = "_sip._tcp.example"
  zone_name           = azurerm_private_dns_zone.example.name
  resource_group_name = azurerm_resource_group.example.name
  ttl                 = 3600
  port                = 5060
  priority            = 10
  weight              = 60
  target              = "sipserver.example.com"
}
