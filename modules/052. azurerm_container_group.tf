resource "azurerm_container_group" "example" {
  name                = "example-containergroup"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  os_type              = "Linux"
  container {
    name   = "example-container"
    image  = "nginx:latest"
    cpu    = "0.5"
    memory = "1.5"
    ports  = ["80"]
  }
  tags = {
    environment = "testing"
  }
}
