resource "azurerm_iothub_shared_access_policy" "example" {
  name                = "example-iothub-shared-access-policy"
  iothub_name         = azurerm_iothub.example.name
  resource_group_name = azurerm_resource_group.example.name
  rights              = ["DeviceConnect", "RegistryRead"]
}
