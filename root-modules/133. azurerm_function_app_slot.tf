resource "azurerm_function_app_slot" "example" {
  name                = "example-slot"
  function_app_name   = azurerm_function_app.example.name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  app_service_plan_id = azurerm_app_service_plan.example.id
  app_settings = {
    "SETTING_NAME" = "setting_value"
  }
}
