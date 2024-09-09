resource "azurerm_shared_image_gallery" "example" {
  name                = "example-shared-image-gallery"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  description         = "Example shared image gallery"
  tags = {
    environment = "production"
  }
}
