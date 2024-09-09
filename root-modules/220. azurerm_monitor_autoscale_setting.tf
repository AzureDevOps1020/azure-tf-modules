resource "azurerm_monitor_autoscale_setting" "example" {
  name                = "example-autoscale-setting"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  target_resource_id  = azurerm_virtual_machine_scale_set.example.id
  profile {
    name = "default"
    capacity {
      minimum = "1"
      maximum = "10"
      default = "2"
    }
    rules {
      metric_name = "Percentage CPU"
      operator    = "GreaterThan"
      threshold   = 75
      direction   = "Increase"
      change      = 1
      cooldown    = "PT5M"
    }
  }
}
