output "bot_channel_smses_bot_name" {
  description = "Map of bot_name values across all bot_channel_smses, keyed the same as var.bot_channel_smses"
  value       = { for k, v in azurerm_bot_channel_sms.bot_channel_smses : k => v.bot_name }
}
output "bot_channel_smses_location" {
  description = "Map of location values across all bot_channel_smses, keyed the same as var.bot_channel_smses"
  value       = { for k, v in azurerm_bot_channel_sms.bot_channel_smses : k => v.location }
}
output "bot_channel_smses_phone_number" {
  description = "Map of phone_number values across all bot_channel_smses, keyed the same as var.bot_channel_smses"
  value       = { for k, v in azurerm_bot_channel_sms.bot_channel_smses : k => v.phone_number }
}
output "bot_channel_smses_resource_group_name" {
  description = "Map of resource_group_name values across all bot_channel_smses, keyed the same as var.bot_channel_smses"
  value       = { for k, v in azurerm_bot_channel_sms.bot_channel_smses : k => v.resource_group_name }
}
output "bot_channel_smses_sms_channel_account_security_id" {
  description = "Map of sms_channel_account_security_id values across all bot_channel_smses, keyed the same as var.bot_channel_smses"
  value       = { for k, v in azurerm_bot_channel_sms.bot_channel_smses : k => v.sms_channel_account_security_id }
}
output "bot_channel_smses_sms_channel_auth_token" {
  description = "Map of sms_channel_auth_token values across all bot_channel_smses, keyed the same as var.bot_channel_smses"
  value       = { for k, v in azurerm_bot_channel_sms.bot_channel_smses : k => v.sms_channel_auth_token }
  sensitive   = true
}

