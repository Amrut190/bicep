# Introduction 
- Azure Bicep is a domain-specific language (DSL) for deploying Azure resources declaratively. It is designed to simplify the authoring experience for Infrastructure as Code (IaC) on Azure, providing an alternative to writing JSON-based ARM templates. Bicep files compile directly into ARM templates, ensuring you can leverage all the features of the Azure Resource Manager while writing less code. 

# Getting Started
TODO: Guide users through getting your code up and running on their own system. In this section you can talk about:
1.	Create a app registration & a client secreat . Update the values of service priciple variables .
2.	Create the required module in the path - bicep/modules
3.  Add the modules in the path - bicep/deployments/Ethika/landing-zones/subscription-1/rg-app-002/deploy.bicep
4.  Create the required parameters to deploy the modlues in the path - bicep/deployments/Ethika/landing-zones/subscription-1/rg-app-002/deploy.bicepparam
5.  Create the service connection to azure portal in project settings .
6.  Change the parameter value(azureServiceConnection) in .pipelines/azure-resource group-level.yaml


# Contribute
references https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/overview?tabs=bicep