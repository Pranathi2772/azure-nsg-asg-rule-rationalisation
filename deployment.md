# Azure Deployment Guide

## Step 1 – Create Resource Group
Create a Resource Group to organize Azure resources.

## Step 2 – Create Virtual Network
Create one Virtual Network with three subnets:
- Web Subnet
- Application Subnet
- Database Subnet

## Step 3 – Create Application Security Groups
Create ASG-Web, ASG-App, and ASG-Database.

## Step 4 – Create Virtual Machines
Deploy virtual machines in each subnet.

## Step 5 – Configure Network Security Group
Create NSG and associate it with the virtual network.

## Step 6 – Add Security Rules
- Allow HTTP/HTTPS (80,443) to Web ASG.
- Allow port 8080 from Web ASG to App ASG.
- Allow port 3306 from App ASG to Database ASG.
- Deny Internet access to Database ASG.

## Step 7 – Verify Deployment
Validate connectivity between the application layers.
