resource "azurerm_firewall_application_rule_collection" "example" {
  name                = "example-app-rule-collection"
  priority            = 100
  action              = "Allow"
  firewall_id         = azurerm_firewall.example.id
  rule {
    name               = "example-app-rule"
    protocol           = "Http"
    source_addresses   = ["*"]
    destination_addresses = ["*"]
    destination_ports  = ["80"]
  }
}
