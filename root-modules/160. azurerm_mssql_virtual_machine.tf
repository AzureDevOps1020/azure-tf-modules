resource "azurerm_mssql_virtual_machine" "example" {
  name                = "example-mssql-vm"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  virtual_machine_id  = azurerm_virtual_machine.example.id
  sql_server_license   = "PAYG"
}
