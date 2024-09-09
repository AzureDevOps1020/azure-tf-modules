resource "azurerm_mariadb_server" "example" {
  name                = "example-mariadb-server"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku_name            = "B_Gen5_1"
  version             = "10.4"
  storage_mb          = 5120
  administrator_login = "adminuser"
  administrator_password = "Password1234!"
  ssl_enforcement     = "Enabled"
}
