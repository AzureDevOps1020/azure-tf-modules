resource "azurerm_application_security_group" "example" {
  name                = "example-app-sec-group"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}
