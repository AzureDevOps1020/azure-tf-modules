resource "azurerm_firewall_nat_rule_collection" "example" {
  name                = "example-nat-rule-collection"
  priority            = 100
  action              = "Dnat"
  firewall_id         = azurerm_firewall.example.id
  rule {
    name               = "example-nat-rule"
    protocol           = "TCP"
    source_addresses   = ["*"]
    destination_addresses = ["*"]
    destination_ports  = ["80"]
    translated_port    = 8080
  }
}
