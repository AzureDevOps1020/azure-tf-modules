resource "azurerm_iothub_route" "example" {
  name                = "example-iothub-route"
  iothub_name         = azurerm_iothub.example.name
  resource_group_name = azurerm_resource_group.example.name
  source              = "DeviceMessages"
  condition           = "true"
  endpoint_ids        = [azurerm_iothub_endpoint.example.id]
}
