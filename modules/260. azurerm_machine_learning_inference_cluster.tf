resource "azurerm_machine_learning_inference_cluster" "example" {
  name                = "example-inference-cluster"
  resource_group_name = azurerm_resource_group.example.name
  workspace_id        = azurerm_machine_learning_workspace.example.id
  location            = azurerm_resource_group.example.location
  sku                 = "Standard_D4s_v3"
  scale_settings {
    min_instance_count = 1
    max_instance_count = 3
  }
}
