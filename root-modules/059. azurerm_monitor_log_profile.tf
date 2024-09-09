resource "azurerm_monitor_log_profile" "example" {
  name                = "example-log-profile"
  location            = "global"
  retention_in_days   = 30
  categories          = ["Write", "Delete", "Action"]
  locations           = ["eastus", "westus"]
}
