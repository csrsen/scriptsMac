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
