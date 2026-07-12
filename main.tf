data "azurerm_key_vault_secret" "sms_channel_auth_token" {
  for_each     = { for k, v in var.bot_channel_smses : k => v if v.sms_channel_auth_token_key_vault_id != null && v.sms_channel_auth_token_key_vault_secret_name != null }
  name         = each.value.sms_channel_auth_token_key_vault_secret_name
  key_vault_id = each.value.sms_channel_auth_token_key_vault_id
}
resource "azurerm_bot_channel_sms" "bot_channel_smses" {
  for_each = var.bot_channel_smses

  bot_name                        = each.value.bot_name
  location                        = each.value.location
  phone_number                    = each.value.phone_number
  resource_group_name             = each.value.resource_group_name
  sms_channel_account_security_id = each.value.sms_channel_account_security_id
  sms_channel_auth_token          = each.value.sms_channel_auth_token != null ? each.value.sms_channel_auth_token : try(data.azurerm_key_vault_secret.sms_channel_auth_token[each.key].value, null)
}

