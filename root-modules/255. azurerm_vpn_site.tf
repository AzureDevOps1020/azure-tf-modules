resource "azurerm_vpn_site" "example" {
  name                = "example-vpn-site"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  vpn_site_address    = "192.168.1.0/24"
}
