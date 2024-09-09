resource "azurerm_nat_gateway_public_ip_association" "example" {
  nat_gateway_id = azurerm_nat_gateway.example.id
  public_ip_id   = azurerm_public_ip.example.id
}
