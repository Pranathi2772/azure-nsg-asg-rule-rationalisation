#!/bin/bash

echo "Creating Virtual Network..."

az network vnet create \
  --resource-group RG-P028-NetworkSecurity \
  --name P028-VNet \
  --address-prefix 10.0.0.0/16 \
  --subnet-name FrontendSubnet \
  --subnet-prefix 10.0.1.0/24

echo "Virtual Network created successfully."
