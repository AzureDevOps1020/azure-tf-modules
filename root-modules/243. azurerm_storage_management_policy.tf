resource "azurerm_storage_management_policy" "example" {
  name                = "example-management-policy"
  storage_account_id  = azurerm_storage_account.example.id
  rule {
    name    = "example-rule"
    filter {
      blob {
        blob_types = ["blockBlob"]
      }
    }
    actions {
      base_blob {
        delete {
          days_after_modification_greater_than = 30
        }
      }
    }
  }
}
