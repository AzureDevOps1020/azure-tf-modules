resource "azurerm_hpc_cache_nfs_target" "example" {
  name                = "example-hpc-cache-nfs-target"
  hpc_cache_id        = azurerm_hpc_cache.example.id
  server_name         = "nfs-server"
  export_path         = "/mnt/nfs"
}
