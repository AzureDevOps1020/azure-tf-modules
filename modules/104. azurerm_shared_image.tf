resource "azurerm_shared_image" "example" {
  name                = "example-shared-image"
  resource_group_name = azurerm_resource_group.example.name
  gallery_name        = azurerm_shared_image_gallery.example.name
  location            = azurerm_resource_group.example.location
  os_type             = "Windows"
  hyper_v_generation  = "V1"
  tags = {
    environment = "production"
  }
}
