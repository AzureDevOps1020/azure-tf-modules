resource "azurerm_virtual_machine_extension" "example" {
  name                 = "example-extension"
  virtual_machine_id   = azurerm_virtual_machine.example.id
  publisher             = "Microsoft.Azure.Extensions"
  type                  = "CustomScript"
  type_handler_version  = "1.10"
  settings              = <<SETTINGS
{
  "script": "./scripts/install.sh",
  "arguments": ""
}
SETTINGS
  protected_settings   = <<PROTECTED_SETTINGS
{
  "script": "./scripts/install.sh"
}
PROTECTED_SETTINGS
}
