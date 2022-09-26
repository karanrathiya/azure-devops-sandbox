
resource "azurerm_key_vault" "karanrathiya-sit-resource-group-keyvault" {
  name                        = "sittestkey1"
  location                    = data.azurerm_key_vault.sandbox.location
  resource_group_name         = data.azurerm_key_vault.sandbox.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  sku_name = "standard"
  tags = {
    environment = "staging"
  }
}
