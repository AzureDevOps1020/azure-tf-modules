resource "azurerm_iothub_dps_shared_access_policy" "example" {
  name                = "example-iothub-dps-shared-access-policy"
  iothub_dps_name     = azurerm_iothub_dps.example.name
  resource_group_name = azurerm_resource_group.example.name
  rights              = ["EnrollmentRead", "EnrollmentWrite"]
}
