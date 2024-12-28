# this will create storage account and blob container

#!/bin/bash

RESOURCE_GROUP_NAME=terraform-learning
STORAGE_ACCOUNT_NAME=remotebackend$RANDOM
CONTAINER_NAME=day04$RANDOM

# Create resource group
az group create --name $RESOURCE_GROUP_NAME --location canadacentral

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME