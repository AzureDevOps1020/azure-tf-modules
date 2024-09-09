resource "azurerm_hdinsight_kafka_cluster" "example" {
  name                = "example-hdinsight-kafka-cluster"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  tier                = "Standard"
  version             = "2.0"
  component_version {
    kafka = "2.0"
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
