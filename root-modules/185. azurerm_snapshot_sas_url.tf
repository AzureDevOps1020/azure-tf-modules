data "azurerm_snapshot" "example" {
  name                = "example-snapshot"
  resource_group_name = azurerm_resource_group.example.name
}

output "sas_url" {
  value = data.azurerm_snapshot.example.sas_url
}
