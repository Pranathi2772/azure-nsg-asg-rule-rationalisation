# Deployment Guide

## Azure Resources Created

* Resource Group: AzureNSGRG
* Virtual Network: AzureVNet (10.0.0.0/16)
* Web Subnet: 10.0.1.0/24
* Application Subnet: 10.0.2.0/24
* Database Subnet: 10.0.3.0/24

## Application Security Groups

* ASG-Web
* ASG-App
* ASG-Database

## Virtual Machines

* web-vm1
* web-vm2
* app-vm1
* app-vm2
* db-vm1
* db-vm2

## Network Security Group Rules

| Source   | Destination  | Port   | Action |
| -------- | ------------ | ------ | ------ |
| Internet | ASG-Web      | 80,443 | Allow  |
| ASG-Web  | ASG-App      | 8080   | Allow  |
| ASG-App  | ASG-Database | 3306   | Allow  |
| Internet | ASG-Database | 3306   | Deny   |

## Deployment Status

The three-tier Azure network was deployed successfully with NSG rules applied using Application Security Groups.

