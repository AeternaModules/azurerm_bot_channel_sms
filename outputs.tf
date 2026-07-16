output "bot_channel_smses_id" {
  description = "Map of id values across all bot_channel_smses, keyed the same as var.bot_channel_smses"
  value       = { for k, v in azurerm_bot_channel_sms.bot_channel_smses : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bot_channel_smses_bot_name" {
  description = "Map of bot_name values across all bot_channel_smses, keyed the same as var.bot_channel_smses"
  value       = { for k, v in azurerm_bot_channel_sms.bot_channel_smses : k => v.bot_name if v.bot_name != null && length(v.bot_name) > 0 }
}
output "bot_channel_smses_location" {
  description = "Map of location values across all bot_channel_smses, keyed the same as var.bot_channel_smses"
  value       = { for k, v in azurerm_bot_channel_sms.bot_channel_smses : k => v.location if v.location != null && length(v.location) > 0 }
}
output "bot_channel_smses_phone_number" {
  description = "Map of phone_number values across all bot_channel_smses, keyed the same as var.bot_channel_smses"
  value       = { for k, v in azurerm_bot_channel_sms.bot_channel_smses : k => v.phone_number if v.phone_number != null && length(v.phone_number) > 0 }
}
output "bot_channel_smses_resource_group_name" {
  description = "Map of resource_group_name values across all bot_channel_smses, keyed the same as var.bot_channel_smses"
  value       = { for k, v in azurerm_bot_channel_sms.bot_channel_smses : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "bot_channel_smses_sms_channel_account_security_id" {
  description = "Map of sms_channel_account_security_id values across all bot_channel_smses, keyed the same as var.bot_channel_smses"
  value       = { for k, v in azurerm_bot_channel_sms.bot_channel_smses : k => v.sms_channel_account_security_id if v.sms_channel_account_security_id != null && length(v.sms_channel_account_security_id) > 0 }
}
output "bot_channel_smses_sms_channel_auth_token" {
  description = "Map of sms_channel_auth_token values across all bot_channel_smses, keyed the same as var.bot_channel_smses"
  value       = { for k, v in azurerm_bot_channel_sms.bot_channel_smses : k => v.sms_channel_auth_token if v.sms_channel_auth_token != null && length(v.sms_channel_auth_token) > 0 }
  sensitive   = true
}

