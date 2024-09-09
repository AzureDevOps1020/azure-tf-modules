resource "azurerm_hdinsight_cluster" "example" {
  name                = "example-hdinsight-cluster"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  cluster_type        = "Hadoop"
  version             = "3.6"
  tier                = "Standard"
  component_version {
    hadoop = "3.2"
  }
  ssh_profile {
    username = "adminuser"
    password = "P@ssw0rd"
  }
  storage_account {
    storage_account_id = azurerm_storage_account.example.id
    container_name     = "example-container"
  }
}
