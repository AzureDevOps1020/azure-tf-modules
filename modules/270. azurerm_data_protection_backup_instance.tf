resource "azurerm_data_protection_backup_instance" "example" {
  name                = "example-backup-instance"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  backup_instance_id  = "example-backup-instance-id"
}
