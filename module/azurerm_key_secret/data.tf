data "azurerm_key_vault" "key_vault_id" {
  for_each            = var.key_secret
  name                = each.value.kv_name
  resource_group_name = each.value.resource_group_name
}
