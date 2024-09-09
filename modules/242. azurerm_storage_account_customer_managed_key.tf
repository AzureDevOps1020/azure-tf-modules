resource "azurerm_storage_account_customer_managed_key" "example" {
  name                = "example-customer-managed-key"
  resource_group_name = azurerm_resource_group.example.name
  storage_account_id  = azurerm_storage_account.example.id
  key_vault_id        = azurerm_key_vault.example.id
  key_name            = "example-key"
  key_version         = "version1"
}
