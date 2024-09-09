resource "azurerm_firewall_policy" "example" {
  name                = "example-firewall-policy"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  rule_collection_group {
    name = "example-rule-collection-group"
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
}
