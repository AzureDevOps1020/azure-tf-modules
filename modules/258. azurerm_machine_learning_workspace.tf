resource "azurerm_machine_learning_workspace" "example" {
  name                = "example-ml-workspace"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Basic"
}
