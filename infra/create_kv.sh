# create a key vault
az keyvault create \
    --name "<your-unique-keyvault-name>" \
    --resource-group "myResourceGroup"
# Give your user account permissions to manage secrets in Key Vault
az role assignment create \
    --role "Key Vault Secrets Officer" \
    --assignee "<upn>" \
    --scope "/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>/providers/Microsoft.KeyVault/vaults/<your-unique-keyvault-name>"
# Add a secret to Key Vault
az keyvault secret set \
    --vault-name "<your-unique-keyvault-name>" \
    --name "ExamplePassword" \
    --value "hVFkk965BuUv"
# Show the secret value
az keyvault secret show \
    --name "ExamplePassword" \
    --vault-name "<your-unique-keyvault-name>" \
    --query "value"

