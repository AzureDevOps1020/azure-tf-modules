resource "azurerm_billing_budget_resource_group" "example" {
  name                = "example-budget"
  resource_group_name = azurerm_resource_group.example.name
  amount              = 500
  time_grain          = "Monthly"
}
