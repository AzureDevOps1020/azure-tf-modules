resource "azurerm_key_vault" "example" {
  name                = "example-vault"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku_name            = "standard"
  tenant_id           = data.azurerm_client_config.example.tenant_id
  access_policy {
    tenant_id = data.azurerm_client_config.example.tenant_id
    object_id = data.azurerm_client_config.example.object_id
    key_permissions = [
      "get",
      "list",
    ]
    secret_permissions = [
      "get",
      "list",
    ]
  }
}
