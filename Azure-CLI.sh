# Azure CLI functions

#!/bin/bash

azure-cli

# To see all resource providers in Azure, and the registration status for your subscription, use:
az provider list --query "[].{Provider:namespace, Status:registrationState}" --out table

az provider register --namespace Microsoft.Batch

# To see the resource types for a resource provider
az provider show --namespace Microsoft.Batch --query "resourceTypes[*].resourceType" --out table

# To get the available API versions for a resource type
az provider show --namespace Microsoft.Batch --query "resourceTypes[?resourceType=='batchAccounts'].apiVersions | [0]" --out table

# To get the supported locations for a resource type
az provider show --namespace Microsoft.Batch --query "resourceTypes[?resourceType=='batchAccounts'].locations | [0]" --out table

# To deploy Azure template
cd "/Users/craig/OneDrive - Srsen Consulting LLC/Scripts"
az login

az group create --name SrsenConsulting --location "West US"
az group deployment create --resource-group SrsenConsulting --template-file azuredeploy.json --parameters storageSKU=Standard_RAGRS storageNamePrefix=newstore

# to clean up resources
az group delete --name SrsenConsulting
