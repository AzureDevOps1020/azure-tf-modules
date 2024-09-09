resource "azurerm_nat_rule" "example" {
  name                = "example-nat-rule"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  action              = "Deny"
  priority            = 100
  protocol            = "TCP"
  source_address      = "0.0.0.0/0"
  destination_address = "10.0.0.0/24"
  source_port_range   = "*"
  destination_port_range = "*"
}
