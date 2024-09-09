resource "azurerm_frontdoor" "example" {
  name                = "example-frontdoor"
  resource_group_name = azurerm_resource_group.example.name
  location            = "global"
  frontend_endpoint {
    name      = "example-frontend-endpoint"
    host_name = "example.azurefd.net"
  }
  backend_pool {
    name = "example-backend-pool"
    backend {
      host_header = "example.azurewebsites.net"
      address     = "example.azurewebsites.net"
      http_port    = 80
      https_port   = 443
    }
  }
}
