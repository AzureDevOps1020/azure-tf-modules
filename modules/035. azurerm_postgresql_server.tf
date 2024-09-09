resource "azurerm_postgresql_server" "example" {
  name                = "example-postgresql-server"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  version             = "11"
  sku_name            = "B_Gen5_1"
  storage_mb          = 5120
  administrator_login = "adminuser"
  administrator_password = "Password1234!"
  ssl_enforcement     = "Enabled"
}
