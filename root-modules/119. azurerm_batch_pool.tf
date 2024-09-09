resource "azurerm_batch_pool" "example" {
  name                = "example-batch-pool"
  batch_account_name  = azurerm_batch_account.example.name
  resource_group_name = azurerm_resource_group.example.name
  vm_size             = "STANDARD_A1_v2"
  virtual_machine_configuration {
    image_reference {
      publisher = "MicrosoftWindowsServer"
      offer     = "WindowsServer"
      sku       = "2016-Datacenter"
      version   = "latest"
    }
  }
  node_agent_sku_id = "batch.node.windows amd64"
}
