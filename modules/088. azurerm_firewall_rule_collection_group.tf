resource "azurerm_firewall_rule_collection_group" "example" {
  name                = "example-rule-collection-group"
  firewall_id         = azurerm_firewall.example.id
  rule_collection {
    name    = "example-rule-collection"
    priority = 100
    rule {
      name    = "example-rule"
      protocol = "TCP"
      source_addresses = ["*"]
      destination_addresses = ["*"]
      destination_ports = ["80"]
      action = "Allow"
    }
  }
}
