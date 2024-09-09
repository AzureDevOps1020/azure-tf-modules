resource "azurerm_iothub_dps_certificate" "example" {
  name                = "example-iothub-dps-certificate"
  iothub_dps_name     = azurerm_iothub_dps.example.name
  resource_group_name = azurerm_resource_group.example.name
  certificate          = filebase64("path/to/cert.pem")
  primary_key          = "primary-key"
  secondary_key        = "secondary-key"
}
