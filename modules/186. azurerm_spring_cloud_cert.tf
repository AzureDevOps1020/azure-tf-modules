resource "azurerm_spring_cloud_cert" "example" {
  name                = "example-cert"
  resource_group_name = azurerm_resource_group.example.name
  spring_cloud_name   = azurerm_spring_cloud_example.name
  key_vault_secret_id = azurerm_key_vault_secret.example.id
}
