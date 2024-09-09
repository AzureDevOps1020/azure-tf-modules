resource "azurerm_hdinsight_storm_cluster" "example" {
  name                = "example-hdinsight-storm-cluster"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  tier                = "Standard"
  version             = "1.2"
  component_version {
    storm = "1.2"
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
