# Azure Services Used

This project uses multiple Microsoft Azure networking services to implement Application Security Group (ASG) based Network Security Group (NSG) rule rationalisation.

## 1. Azure Resource Group

A Resource Group is a logical container that holds all Azure resources used in the project.

**Resource Name:** AzureNSGRG

## 2. Azure Virtual Network (VNet)

The Virtual Network provides a private network for communication between Azure resources.

**VNet Name:** AzureVNet

**Address Space:** 10.0.0.0/16

## 3. Azure Subnets

The VNet is divided into three subnets.

| Subnet | Address Prefix | Purpose |
|--------|---------------|---------|
| WebSubnet | 10.0.1.0/24 | Hosts Web Virtual Machines |
| AppSubnet | 10.0.2.0/24 | Hosts Application Virtual Machines |
| DatabaseSubnet | 10.0.3.0/24 | Hosts Database Virtual Machines |

## 4. Application Security Groups (ASGs)

Application Security Groups logically group virtual machines based on their application role.

- **ASG-Web** – Web servers.
- **ASG-App** – Application servers.
- **ASG-Database** – Database servers.

## 5. Network Security Group (NSG)

The Network Security Group controls inbound and outbound traffic using security rules.

**NSG Name:** AzureNSG

## 6. Azure Virtual Machines

Six virtual machines are used.

- Web VM1
- Web VM2
- App VM1
- App VM2
- DB VM1
- DB VM2

## 7. Azure Network Watcher

Azure Network Watcher is used to verify effective security rules and network connectivity.

## Summary

These Azure services work together to provide secure communication between Web, Application, and Database tiers using ASGs instead of IP-based NSG rules.
