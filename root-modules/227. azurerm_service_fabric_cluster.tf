resource "azurerm_service_fabric_cluster" "example" {
  name                = "example-service-fabric-cluster"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  reliability_level   = "Bronze"
  upgrade_mode        = "Rolling"
  node_types {
    name     = "PrimaryNodeType"
    instance_count = 5
    vm_size   = "Standard_D1_v2"
  }
}
