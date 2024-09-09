output "admin_password" {
  value     = random_password.admin_password.result
  sensitive = true
}

output "resource_group_name" {
  value = module.resource_group.resource_group_name
}
