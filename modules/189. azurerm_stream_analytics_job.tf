resource "azurerm_stream_analytics_job" "example" {
  name                = "example-stream-analytics-job"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  sku                 = "Standard"
}
