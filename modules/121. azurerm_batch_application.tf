resource "azurerm_batch_application" "example" {
  name                = "example-batch-application"
  batch_account_name  = azurerm_batch_account.example.name
  resource_group_name = azurerm_resource_group.example.name
}
