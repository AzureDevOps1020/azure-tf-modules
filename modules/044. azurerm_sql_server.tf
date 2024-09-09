resource "azurerm_sql_server" "example" {
  name                = "example-sql-server"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  version             = "12.0"
  administrator_login = "adminuser"
  administrator_password = "Password1234!"
  tags                = {
    environment = "testing"
  }
}
