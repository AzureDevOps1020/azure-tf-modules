resource "azurerm_service_fabric_managed_node_type" "example" {
  name                = "example-node-type"
  resource_group_name = azurerm_resource_group.example.name
  cluster_name        = azurerm_service_fabric_managed_cluster.example.name
  node_type           = "NodeType1"
  instance_count      = 3
}
