using './main.bicep'

param name = ''
param location = resourceGroup().location
param defaultAction = 'Deny'
param environment = ''
param workspaceId = ''

