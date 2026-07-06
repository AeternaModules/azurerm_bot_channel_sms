output "bot_channel_smses" {
  description = "All bot_channel_sms resources"
  value       = azurerm_bot_channel_sms.bot_channel_smses
  sensitive   = true
}
output "bot_channel_smses_bot_name" {
  description = "List of bot_name values across all bot_channel_smses"
  value       = [for k, v in azurerm_bot_channel_sms.bot_channel_smses : v.bot_name]
}
output "bot_channel_smses_location" {
  description = "List of location values across all bot_channel_smses"
  value       = [for k, v in azurerm_bot_channel_sms.bot_channel_smses : v.location]
}
output "bot_channel_smses_phone_number" {
  description = "List of phone_number values across all bot_channel_smses"
  value       = [for k, v in azurerm_bot_channel_sms.bot_channel_smses : v.phone_number]
}
output "bot_channel_smses_resource_group_name" {
  description = "List of resource_group_name values across all bot_channel_smses"
  value       = [for k, v in azurerm_bot_channel_sms.bot_channel_smses : v.resource_group_name]
}
output "bot_channel_smses_sms_channel_account_security_id" {
  description = "List of sms_channel_account_security_id values across all bot_channel_smses"
  value       = [for k, v in azurerm_bot_channel_sms.bot_channel_smses : v.sms_channel_account_security_id]
}
output "bot_channel_smses_sms_channel_auth_token" {
  description = "List of sms_channel_auth_token values across all bot_channel_smses"
  value       = [for k, v in azurerm_bot_channel_sms.bot_channel_smses : v.sms_channel_auth_token]
  sensitive   = true
}

