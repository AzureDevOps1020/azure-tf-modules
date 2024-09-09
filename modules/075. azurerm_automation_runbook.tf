resource "azurerm_automation_runbook" "example" {
  name                = "example-runbook"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  automation_account_name = azurerm_automation_account.example.name
  log_verbose         = true
  log_progress        = true
  runbook_type        = "PowerShell"
  description         = "Example runbook"
  content             = <<EOF
param(
  [string]$param1
)
Write-Output "Parameter value: $param1"
EOF
}
