resource "azurerm_machine_learning_compute" "example" {
  name                = "example-compute"
  resource_group_name = azurerm_resource_group.example.name
  workspace_id        = azurerm_machine_learning_workspace.example.id
  location            = azurerm_resource_group.example.location
  sku                 = "Standard_DS11_v2"
  scale_settings {
    min_instance_count = 1
    max_instance_count = 5
  }
}
