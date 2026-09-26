# Azure CLI Commands

This file contains the Azure CLI commands used to create the Azure resources in this project.

## Create Resource Group

```bash
az group create --name AzureNSGRG --location eastus
```

## Create Virtual Network

```bash
az network vnet create \
  --resource-group AzureNSGRG \
  --name AzureVNet \
  --address-prefix 10.0.0.0/16
```

## Create Web, Application, and Database Subnets

```bash
az network vnet subnet create \
  --resource-group AzureNSGRG \
  --vnet-name AzureVNet \
  --name WebSubnet \
  --address-prefix 10.0.1.0/24

az network vnet subnet create \
  --resource-group AzureNSGRG \
  --vnet-name AzureVNet \
  --name AppSubnet \
  --address-prefix 10.0.2.0/24

az network vnet subnet create \
  --resource-group AzureNSGRG \
  --vnet-name AzureVNet \
  --name DatabaseSubnet \
  --address-prefix 10.0.3.0/24
```

## Create Network Security Group

```bash
az network nsg create \
  --resource-group AzureNSGRG \
  --name AzureNSG
```

## Create Application Security Groups

```bash
az network asg create --resource-group AzureNSGRG --name ASG-Web
az network asg create --resource-group AzureNSGRG --name ASG-App
az network asg create --resource-group AzureNSGRG --name ASG-Database
```

## Verify Resources

```bash
az network asg list --resource-group AzureNSGRG
az network nsg list --resource-group AzureNSGRG
```
