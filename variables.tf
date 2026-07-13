variable "bot_channel_smses" {
  description = <<EOT
Map of bot_channel_smses, attributes below
Required:
    - bot_name
    - location
    - phone_number
    - resource_group_name
    - sms_channel_account_security_id
    - sms_channel_auth_token
    - sms_channel_auth_token_key_vault_id (optional, alternative to sms_channel_auth_token)
    - sms_channel_auth_token_key_vault_secret_name (optional, alternative to sms_channel_auth_token)
EOT

  type = map(object({
    bot_name                                     = string
    location                                     = string
    phone_number                                 = string
    resource_group_name                          = string
    sms_channel_account_security_id              = string
    sms_channel_auth_token                       = string
    sms_channel_auth_token_key_vault_id          = optional(string)
    sms_channel_auth_token_key_vault_secret_name = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_smses : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_smses : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_smses : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_smses : (
        length(v.bot_name) >= 4
      )
    ])
    error_message = "[from validate.BotName: invalid when len(value) < 4]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_smses : (
        length(v.bot_name) <= 42
      )
    ])
    error_message = "[from validate.BotName: invalid when len(value) > 42]"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_smses : (
        length(v.phone_number) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_smses : (
        length(v.sms_channel_account_security_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.bot_channel_smses : (
        length(v.sms_channel_auth_token) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

