resource_group_name = "example-rg"
vm_name             = "example-vm"
location            = "East US"
vnet_name           = "my-vnet"
subnet_name         = "my-subnet"

address_space = ["10.0.0.0/16"]  # If using a virtual network module, ensure this is defined
address_prefixes = ["10.0.1.0/24"] # If using a subnet module, ensure this is defined

nsg_name              = "example-nsg"
admin_password        = "Password1234!"  # Make sure to securely handle this in production
os_disk_name          = "example-os-disk"
vm_size               = "Standard_DS1_v2"

storage_image_publisher = "Canonical"
storage_image_offer     = "UbuntuServer"
storage_image_sku       = "18.04-LTS"
storage_image_version   = "latest"
