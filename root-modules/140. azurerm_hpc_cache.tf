resource "azurerm_hpc_cache" "example" {
  name                = "example-hpc-cache"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  quota_in_gb         = 100
}
