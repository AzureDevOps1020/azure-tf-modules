resource "azurerm_network_packet_capture" "example" {
  name                = "example-network-packet-capture"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  target              = azurerm_network_interface.example.id
  storage_account_id  = azurerm_storage_account.example.id
  storage_container   = "packet-capture"
  capture_limit       = 1000
}
