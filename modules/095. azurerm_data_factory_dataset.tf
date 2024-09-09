resource "azurerm_data_factory_dataset" "example" {
  name                = "example-dataset"
  data_factory_name   = azurerm_data_factory.example.name
  resource_group_name = azurerm_resource_group.example.name
  linked_service_name = "example-linked-service"
  properties          = jsonencode({
    "type" = "AzureBlob"
    "typeProperties" = {
      "location" = {
        "type" = "AzureBlobFSLocation"
        "linkedServiceName" = "example-linked-service"
      }
    }
  })
}
