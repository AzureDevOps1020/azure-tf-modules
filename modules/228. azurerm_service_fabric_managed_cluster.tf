resource "azurerm_service_fabric_managed_cluster" "example" {
  name                = "example-managed-cluster"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  reliability_level   = "Silver"
  upgrade_mode        = "Rolling"
  node_types {
    name     = "NodeType1"
    instance_count = 3
    vm_size   = "Standard_D2_v2"
  }
}
