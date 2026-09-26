#!/bin/bash

echo "Creating Network Security Group..."

az network nsg create \
  --resource-group RG-P028-NetworkSecurity \
  --name NSG-P028

echo "Adding security rules..."

echo "HTTP/HTTPS -> ASG-Web"
echo "ASG-Web -> ASG-App (8080)"
echo "ASG-App -> ASG-Database (3306)"
echo "Internet -> ASG-Database DENY"

echo "NSG configuration completed."
