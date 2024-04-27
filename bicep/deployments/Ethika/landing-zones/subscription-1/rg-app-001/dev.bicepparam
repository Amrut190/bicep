using 'main.bicep'

param environment = 'dev'
param name = 'kv-example-0018666'
//param location string = resourceGroup().location // Location for all resources 

// Key Vault should only accept explicitly allowed traffic through the firewall.
// Set to 'Allow' to fail Azure.KeyVault.Firewall.
param defaultAction = 'Deny'

param workspaceId = '/subscriptions/dc2b1a3b-1f25-405f-a2ed-e8bdbbf14c83/resourcegroups/rg-syn-logging/providers/microsoft.operationalinsights/workspaces/alz-log-analytics'
