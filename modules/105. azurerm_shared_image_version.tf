resource "azurerm_shared_image_version" "example" {
  name                = "example-shared-image-version"
  image_name          = azurerm_shared_image.example.name
  gallery_name        = azurerm_shared_image_gallery.example.name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  storage_account_type = "Standard_LRS"
  managed_image_id    = azurerm_image.example.id
  version             = "1.0.0"
}
