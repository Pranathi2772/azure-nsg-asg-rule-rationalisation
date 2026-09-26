#!/bin/bash

echo "Creating Application Security Groups..."

az network asg create \
  --resource-group RG-P028-NetworkSecurity \
  --name ASG-Web

az network asg create \
  --resource-group RG-P028-NetworkSecurity \
  --name ASG-App

az network asg create \
  --resource-group RG-P028-NetworkSecurity \
  --name ASG-Database

echo "ASGs created successfully."
