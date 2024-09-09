resource "azurerm_batch_job_schedule" "example" {
  name                = "example-batch-job-schedule"
  batch_account_name  = azurerm_batch_account.example.name
  resource_group_name = azurerm_resource_group.example.name
  job_specification {
    job_id       = azurerm_batch_job.example.id
    schedule     = "PT1H"
    job_schedule {
      recurrence = "1 hour"
    }
  }
}
