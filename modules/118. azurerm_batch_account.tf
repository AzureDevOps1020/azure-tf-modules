resource "azurerm_batch_account" "example" {
  name                = "example-batch-account"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "Standard_LRS"
  tags = {
    environment = "production"
  }
}
