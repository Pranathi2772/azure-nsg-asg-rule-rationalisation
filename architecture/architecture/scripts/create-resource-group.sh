#!/bin/bash

echo "Creating Resource Group..."

az group create \
  --name RG-P028-NetworkSecurity \
  --location centralindia

echo "Resource Group created successfully."
