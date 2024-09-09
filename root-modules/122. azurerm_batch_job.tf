resource "azurerm_batch_job" "example" {
  name                = "example-batch-job"
  batch_account_name  = azurerm_batch_account.example.name
  resource_group_name = azurerm_resource_group.example.name
  pool_id             = azurerm_batch_pool.example.id
  priority            = 1
}
