resource "azurerm_signalr_service_custom_certificate" "example" {
  name                = "example-custom-certificate"
  resource_group_name = azurerm_resource_group.example.name
  signalr_name        = azurerm_signalr_service.example.name
  certificate         = base64encode(file("certificate.pfx"))
  password            = "P@ssw0rd"
}
