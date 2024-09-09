resource "azurerm_proximity_placement_group" "example" {
  name                = "example-proximity-placement-group"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  tags                = {
    Environment = "Production"
  }
}
