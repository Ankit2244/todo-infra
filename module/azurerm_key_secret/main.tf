resource "azurerm_key_vault_secret" "kvs" {
  for_each = var.key_secret
  name         = each.value.sec_name
  value        = each.value.sec_value
  key_vault_id = data.azurerm_key_vault.key_vault_id[each.key].id
}

# resource "azurerm_key_vault_secret" "kvs" {
#   for_each    = var.key_secret

#   name        = each.value.sec_name
#   value       = each.value.sec_value
#   key_vault_id = data.azurerm_key_vault.kv[each.key].id
# }
