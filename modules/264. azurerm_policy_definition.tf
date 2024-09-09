resource "azurerm_policy_definition" "example" {
  name         = "example-policy-definition"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Example Policy"
  policy_rule  = jsonencode({
    if = {
      allOf = [
        {
          field = "type"
          equals = "Microsoft.Compute/virtualMachines"
        }
      ]
    }
    then = {
      effect = "audit"
    }
  })
}
