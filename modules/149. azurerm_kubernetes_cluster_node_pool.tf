resource "azurerm_kubernetes_cluster_node_pool" "example" {
  name                = "example-nodepool"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.example.id
  node_count          = 3
  vm_size             = "Standard_DS2_v2"
  os_type             = "Linux"
  max_count           = 5
  min_count           = 1
}
