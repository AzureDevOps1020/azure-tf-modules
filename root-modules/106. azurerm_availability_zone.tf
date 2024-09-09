resource "azurerm_availability_zone" "example" {
  name                = "example-availability-zone"
  location            = azurerm_resource_group.example.location
}
