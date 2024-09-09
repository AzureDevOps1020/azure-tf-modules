resource "azurerm_data_factory_pipeline" "example" {
  name                = "example-pipeline"
  data_factory_name   = azurerm_data_factory.example.name
  resource_group_name = azurerm_resource_group.example.name
  description         = "Example pipeline"
  activities          = jsonencode([
    {
      "name" = "example-copy-activity"
      "type" = "Copy"
      "inputs" = [
        {
          "referenceName" = "example-input-dataset"
          "type"          = "DatasetReference"
        }
      ]
      "outputs" = [
        {
          "referenceName" = "example-output-dataset"
          "type"          = "DatasetReference"
        }
      ]
      "typeProperties" = {
        "source" = {
          "type" = "BlobSource"
        }
        "sink"   = {
          "type" = "BlobSink"
        }
      }
    }
  ])
}
