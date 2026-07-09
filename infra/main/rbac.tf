resource "azurerm_role_assignment" "vm_secrets_user" {
  scope                = module.key_vault.key_vault_id
  role_definition_name = "Key Vault Secrets User"
  principal_id         = module.vm.vm_identity_principal_id
}