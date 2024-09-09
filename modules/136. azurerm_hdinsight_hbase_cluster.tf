resource "azurerm_hdinsight_hbase_cluster" "example" {
  name                = "example-hdinsight-hbase-cluster"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  tier                = "Standard"
  version             = "3.0"
  component_version {
    hbase = "3.0"
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
