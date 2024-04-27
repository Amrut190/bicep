targetScope = 'resourceGroup'


param name string
param resourceGroup string
param location string = resourceGroup().location

@allowed([
  'Allow'
  'Deny'
])
param defaultAction string = 'Deny'
param environment string
param workspaceId string = ''

// resource existingResourceGroup 'Microsoft.Resources/resourceGroups@2023-07-01' existing = {
//   name: 'budgetrg'
//   scope: subscription('dc2b1a3b-1f25-405f-a2ed-e8bdbbf14c83')
// }

resource vault 'Microsoft.KeyVault/vaults@2023-02-01' = {
  name: name
  location: location
  properties: {
    sku: {
      family: 'A'
      name: 'standard'
    }
    tenantId: tenant().tenantId
    enableSoftDelete: true
    enablePurgeProtection: true
    enableRbacAuthorization: true
    networkAcls: {
      defaultAction: defaultAction
    }
  }
  tags: {
    env: environment
  }
}

@sys.description('Configure auditing for Key Vault.')
resource logs 'Microsoft.Insights/diagnosticSettings@2021-05-01-preview' = if (!empty(workspaceId)) {
  name: 'service'
  scope: vault
  properties: {
    workspaceId: workspaceId
    logs: [
      {
        category: 'AuditEvent'
        enabled: true
      }
    ]
  }
}
