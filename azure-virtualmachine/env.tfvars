resource_group_name = "example-rg"
vm_name             = "example-vm"
location            = "East US"
vnet_name           = "my-vnet"
subnet_name         = "my-subnet"

os_disk = {
  caching              = "ReadWrite"
  storage_account_type = "Standard_LRS"
}

image_reference = {
  publisher = "Canonical"
  offer     = "UbuntuServer"
  sku       = "18.04-LTS"
  version   = "latest"
}
