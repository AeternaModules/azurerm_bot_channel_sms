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
  # --- Unconfirmed validation candidates, derived from azurerm_bot_channel_sms's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: bot_name
  #   source:    [from validate.BotName] !ok
  # path: bot_name
  #   condition: length(value) >= 4
  #   message:   [from validate.BotName: invalid when len(value) < 4]
  #   source:    [from validate.BotName: invalid when len(value) < 4]
  # path: bot_name
  #   condition: length(value) <= 42
  #   message:   [from validate.BotName: invalid when len(value) > 42]
  #   source:    [from validate.BotName: invalid when len(value) > 42]
  # path: bot_name
  #   source:    [from validate.BotName] !regexp.MustCompile(`^[a-zA-Z0-9][a-zA-Z0-9_-]*$`).MatchString(v)
  # path: phone_number
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: sms_channel_account_security_id
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: sms_channel_auth_token
  #   condition: length(value) > 0
  #   message:   must not be empty
}

