resource "azurerm_template_deployment" "example" {
  name                = "example-deployment"
  resource_group_name = azurerm_resource_group.example.name
  template_body       = file("template.json")
  parameters = {
    param1 = "value1"
    param2 = "value2"
  }
}
