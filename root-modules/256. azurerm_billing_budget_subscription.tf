resource "azurerm_billing_budget_subscription" "example" {
  name                = "example-budget"
  resource_group_name = azurerm_resource_group.example.name
  subscription_id     = "your-subscription-id"
  amount              = 1000
  time_grain          = "Monthly"
}
