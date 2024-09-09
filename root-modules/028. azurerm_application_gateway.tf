resource "azurerm_application_gateway" "example" {
  name                = "example-appgw"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku {
    name     = "Standard_v2"
    tier     = "Standard_v2"
    capacity = 2
  }
  gateway_ip_configuration {
    name      = "example-ip-config"
    subnet_id = azurerm_subnet.example.id
  }
  frontend_ip_configuration {
    name                 = "example-frontend"
    public_ip_address_id = azurerm_public_ip.example.id
  }
  frontend_port {
    name = "example-frontend-port"
    port = 80
  }
  backend_address_pool {
    name = "example-backend-pool"
  }
  backend_http_settings {
    name                    = "example-backend-http-settings"
    port                    = 80
    protocol                = "Http"
    cookie_based_affinity   = "Disabled"
    request_timeout         = 20
  }
  http_listener {
    name                            = "example-http-listener"
    frontend_ip_configuration_name = "example-frontend"
    frontend_port_name              = "example-frontend-port"
    protocol                        = "Http"
  }
  url_path_map {
    name                = "example-url-path-map"
    default_backend_address_pool_id = azurerm_application_gateway_backend_address_pool.example.id
    default_backend_http_settings_id = azurerm_application_gateway_backend_http_settings.example.id
    default_redirect_configuration {
      redirect_type = "Permanent"
    }
    path_rule {
      name                        = "example-path-rule"
      paths                       = ["/images/*"]
      backend_address_pool_id    = azurerm_application_gateway_backend_address_pool.example.id
      backend_http_settings_id   = azurerm_application_gateway_backend_http_settings.example.id
    }
  }
}
