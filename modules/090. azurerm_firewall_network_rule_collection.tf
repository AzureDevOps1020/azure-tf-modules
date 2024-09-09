resource "azurerm_firewall_network_rule_collection" "example" {
  name                = "example-net-rule-collection"
  priority            = 100
  action              = "Allow"
  firewall_id         = azurerm_firewall.example.id
  rule {
    name               = "example-net-rule"
    protocol           = "TCP"
    source_addresses   = ["*"]
    destination_addresses = ["*"]
    destination_ports  = ["80"]
  }
}
