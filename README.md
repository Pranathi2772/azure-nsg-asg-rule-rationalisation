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

## Project Structure

```text
azure-nsg-asg-rule-rationalisation/
│
├── architecture/
│   ├── README.md
│   └── network-architecture.png
│
├── screenshots/
│   ├── README.md
│   ├── resource-group.png
│   ├── virtual-network.png
│   ├── application-security-group.png
│   ├── network-security-group.png
│   ├── effective-security-rules.png
│   └── security-rule-configuration.png
│
├── scripts/
│   └── create-nsg-rules.sh
│
├── templates/
│   ├── network.json
│   └── security-rules.json
│
├── commands.md
├── deployment.md
├── services.md
├── testing.md
├── result.md
├── LICENSE
├── .gitignore
└── README.md
```

### Folder Description

* **architecture/** – Azure network architecture diagram and documentation.
* **screenshots/** – Azure portal screenshots of the project.
* **scripts/** – Bash script used for NSG rule creation.
* **templates/** – ARM/JSON templates for Virtual Network and NSG rules.
* **commands.md** – Azure CLI commands used in the project.
* **deployment.md** – Step-by-step deployment procedure.
* **services.md** – Azure services used in the project.
* **testing.md** – Testing and validation steps.
* **result.md** – Project results and observations.

**P028 – Azure Network Security Group and ASG Rule Rationalisation**
