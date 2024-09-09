resource "azurerm_database_migration_service" "example" {
  name                = "example-dms"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku_name            = "Standard_D4_v2"
}
