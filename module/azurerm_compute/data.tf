data "azurerm_subnet" "subnet" {
  for_each             = var.vms
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_public_ip" "pip" {
  for_each            = var.vms
  name                = each.value.pip_name
  resource_group_name = each.value.resource_group_name
}
 
# # key_vault_secret ka data block cahiye vm me user name and pass ke liye

# data "azurerm_key_vault_secret" "kvs_user" {
#   # for_each = var.key_secret
#   # name         = each.value.name
#   name         = "username"
#   # key_vault_id = data.azurerm_key_vault.kv[each.value.kv_id].id
#   key_vault_id = data.azurerm_key_vault.kv.id
# }

# data "azurerm_key_vault_secret" "kvs_pass" {
#   # for_each = var.key_secret
#   # name         = each.value.name
#   name         = "password"
#   # key_vault_id = data.azurerm_key_vault.kv[each.value.kv_id].id
#   key_vault_id = data.azurerm_key_vault.kv.id
# }


# # variable "key_secret" {}



# # key_vault_secret ka data block use karne ke liye
# # key-vault ka data block cahiye kyuki key_vault id jo key_vault secret ka attribute hai
# # usme key_vault ka name cahiye

# data "azurerm_key_vault" "kv" {
#   # for_each = var.key_vault
#   name                = "mykeyvault1112"
#   resource_group_name = "backend-rg02"
# }

# # variable "key_vault" {}
