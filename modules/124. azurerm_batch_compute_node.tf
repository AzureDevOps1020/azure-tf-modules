resource "azurerm_batch_compute_node" "example" {
  batch_account_name  = azurerm_batch_account.example.name
  resource_group_name = azurerm_resource_group.example.name
  pool_id             = azurerm_batch_pool.example.id
  node_id             = "example-node-id"
}
