resource "azurerm_virtual_hub" "example" {
  name                = "example-virtual-hub"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_prefixes    = ["10.0.0.0/16"]
}
