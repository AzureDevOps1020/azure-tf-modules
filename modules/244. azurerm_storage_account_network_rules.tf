resource "azurerm_storage_account_network_rules" "example" {
  storage_account_id = azurerm_storage_account.example.id
  default_action     = "Deny"
  ip_rules           = ["0.0.0.0/0"]
}
