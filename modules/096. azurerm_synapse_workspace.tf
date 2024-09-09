resource "azurerm_synapse_workspace" "example" {
  name                = "example-synapse-workspace"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "DW100c"
  managed_resource_group_name = "example-managed-rg"
  tags = {
    environment = "production"
  }
}
