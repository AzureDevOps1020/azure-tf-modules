resource "azurerm_synapse_sql_pool" "example" {
  name                = "example-synapse-sql-pool"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  synapse_workspace_name = azurerm_synapse_workspace.example.name
  sku                 = "DW100c"
  requested_service_objective_name = "DW100c"
}
