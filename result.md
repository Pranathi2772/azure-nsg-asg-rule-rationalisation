# Project Result

## Overview

The Azure Network Security Group (NSG) and Application Security Group (ASG) Rule Rationalisation project was successfully implemented using Microsoft Azure cloud networking services.

## Project Outcome

The project successfully demonstrates secure communication between three application layers:

- Internet → Web Layer (Allowed)
- Web Layer → Application Layer (Allowed)
- Application Layer → Database Layer (Allowed)
- Internet → Database Layer (Denied)

Application Security Groups simplify NSG rule management by grouping virtual machines based on their roles instead of using IP addresses.

## Key Achievements

- Created an Azure Virtual Network with three subnets.
- Configured Network Security Groups with application-based rules.
- Created Application Security Groups for Web, Application, and Database servers.
- Applied inbound security rules between application tiers.
- Blocked direct Internet access to the Database layer.
- Verified effective security rules using Azure Network Watcher.

## Benefits

- Improved network security.
- Reduced duplicate NSG rules.
- Easier rule management using ASGs.
- Better scalability for future infrastructure.

## Conclusion

This project demonstrates a secure three-tier Azure network architecture using Network Security Groups and Application Security Groups. The implementation provides simplified firewall management, secure communication between application layers, and improved cloud networking best practices.
