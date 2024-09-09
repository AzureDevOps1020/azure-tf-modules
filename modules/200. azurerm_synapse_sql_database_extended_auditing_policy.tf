resource "azurerm_synapse_sql_database_extended_auditing_policy" "example" {
  name                = "example-auditing-policy"
  resource_group_name = azurerm_resource_group.example.name
  sql_database_id     = azurerm_synapse_sql_database.example.id
  storage_endpoint    = azurerm_storage_account.example.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.example.primary_access_key
  retention_in_days   = 365
  is_retention_in_days_enabled = true
  audit_actions_and_groups = [
    "DATABASE_OBJECT_CHANGE_GROUP",
    "DATABASE_LOGINS_GROUP",
    "DATABASE_SQL_STATEMENTS_GROUP"
  ]
}
