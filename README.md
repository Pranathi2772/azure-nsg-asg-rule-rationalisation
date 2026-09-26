# Azure Network Security Group and ASG Rule Rationalisation

## Project Overview

This project demonstrates how Azure Network Security Groups (NSGs) can be simplified using Application Security Groups (ASGs). Instead of creating firewall rules using IP addresses, ASGs group virtual machines based on application roles such as Web, Application, and Database servers.

## Problem Statement

Managing Azure NSG rules with IP addresses becomes difficult as infrastructure grows. It leads to duplicate rules, priority conflicts, and poor readability.

## Proposed Solution

This project replaces IP-based NSG rules with Application Security Groups to create a secure and easy-to-manage network architecture.

## Objectives

- Replace IP-based NSG rules with ASGs.
- Reduce the number of firewall rules.
- Improve network security management.
- Demonstrate secure communication between Web, Application, and Database layers.

## Azure Services Used

- Azure Virtual Network
- Azure Subnets
- Azure Network Security Group (NSG)
- Azure Application Security Group (ASG)
- Azure Virtual Machines
- Azure Network Watcher

## Architecture

Internet → Web Server → Application Server → Database Server

Application Security Groups control communication between each layer.

## Security Rules

| Source | Destination | Port | Action |
|--------|-------------|------|--------|
| Internet | ASG-Web | 80,443 | Allow |
| ASG-Web | ASG-App | 8080 | Allow |
| ASG-App | ASG-Database | 3306 | Allow |
| Internet | ASG-Database | 3306 | Deny |

## Expected Outcome

- Simplified Azure firewall configuration.
- Better security using application-based rules.
- Reduced rule duplication.
- Easier maintenance and troubleshooting.

## Future Enhancements

- Azure Firewall
- Azure Bastion
- Azure Policy
- Azure Monitor Integration

## Project Code

**P028 – Azure Network Security Group and ASG Rule Rationalisation**
